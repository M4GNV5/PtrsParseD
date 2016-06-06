module PointerScript.def;

extern (C)
{
	enum ptrs_vartype_t
	{
		PTRS_TYPE_UNDEFINED,
		PTRS_TYPE_INT,
		PTRS_TYPE_FLOAT,
		PTRS_TYPE_NATIVE,
		PTRS_TYPE_POINTER,
		PTRS_TYPE_FUNCTION,
		PTRS_TYPE_STRUCT
	}

	struct ptrs_object_t
	{
		const char *key;
		ptrs_var *value;
		ptrs_object_t *next;
	}

	struct ptrs_scope
	{
		ptrs_scope *outer;
		ptrs_object_t *current;
		void *stackstart;
		void *sp;
		ptrs_ast *callAst;
		ptrs_scope *callScope;
		const char *calleeName;
		void *error;
		ubyte exit;// : 2; // 00 = nothing   01 = exit block (continue)   10 = exit loop (break)   11 = exit function (return)
	}
	alias ptrs_scope ptrs_scope_t;

	struct ptrs_function
	{
		char *name;
		int argc;
		char **args;
		ptrs_ast **argv;
		ptrs_ast *_body;
		ptrs_scope *_scope;
		void *nativeCb;
	}
	alias ptrs_function ptrs_function_t;

	enum ptrs_structmembertype
	{
		PTRS_STRUCTMEMBER_VAR,
		PTRS_STRUCTMEMBER_FUNCTION,
		PTRS_STRUCTMEMBER_ARRAY,
		PTRS_STRUCTMEMBER_VARARRAY
	}
	union ptrs_structmember
	{
		ptrs_ast *startval;
		ptrs_function_t *_function;
		ulong size;
	}
	struct ptrs_structlist
	{
		char *name;
		uint offset;
		ptrs_structmembertype type;
		ptrs_structmember value;
		ptrs_structlist *next;
	}
	struct ptrs_struct_t
	{
		char *name;
		ptrs_structlist *member;
		ptrs_function *constructor;
		ptrs_scope *_scope;
		int size;
		void *data;
	}

	union ptrs_val_t
	{
		long intval;
		double floatval;
		const char *strval;
		ptrs_var *ptrval;
		void *nativeval;
		ptrs_function_t *funcval;
		ptrs_struct_t *structval;
	}

	union ptrs_meta_t
	{
		ptrs_struct_t *_this;
		byte *pointer;
		bool readOnly;
	}

	struct ptrs_var
	{
		ptrs_val_t value;
		ptrs_vartype_t type;
		ptrs_meta_t meta;
	}
	alias ptrs_var ptrs_var_t;



	struct ptrs_ast_define
	{
		char *name;
		ptrs_ast *value;
	}

	struct ptrs_ast_import
	{
		ptrs_astlist *fields;
		ptrs_ast *from;
	}

	struct ptrs_ast_trycatch
	{
		ptrs_ast *tryBody;
		ptrs_ast *catchBody;
		int argc;
		char **argv;
	}

	struct ptrs_ast_function
	{
		char *name;
		int argc;
		char **args;
		ptrs_ast **argv;
		ptrs_ast *_body;
	}

	struct ptrs_ast_binary
	{
		ptrs_ast *left;
		ptrs_ast *right;
	}

	struct ptrs_ast_ternary
	{
		ptrs_ast *condition;
		ptrs_ast *trueVal;
		ptrs_ast *falseVal;
	}

	struct ptrs_ast_cast
	{
		ptrs_vartype_t type;
		ptrs_ast *value;
	}

	struct ptrs_ast_call
	{
		ptrs_ast *value;
		ptrs_astlist *arguments;
	}

	struct ptrs_ast_ifelse
	{
		ptrs_ast *condition;
		ptrs_ast *ifBody;
		ptrs_ast *elseBody;
	}

	struct ptrs_ast_control
	{
		ptrs_ast *condition;
		ptrs_ast *_body;
	}

	struct ptrs_ast_for
	{
		ptrs_ast *init;
		ptrs_ast *condition;
		ptrs_ast *step;
		ptrs_ast *_body;
	}

	struct ptrs_ast_forin
	{
		bool newvar;
		char *varname;
		ptrs_ast *value;
		ptrs_ast *_body;
	}

	union ptrs_ast_arg
	{
		char *strval;
		ptrs_var_t constval;
		ptrs_struct_t structval;

		ptrs_ast *astval;
		ptrs_astlist *astlist;

		ptrs_ast_define define;
		ptrs_ast_import _import;
		ptrs_ast_trycatch trycatch;
		ptrs_ast_function _function;
		ptrs_ast_cast _cast;
		ptrs_ast_binary binary;
		ptrs_ast_ternary ternary;
		ptrs_ast_call call;
		ptrs_ast_ifelse ifelse;
		ptrs_ast_control control;
		ptrs_ast_for forstatement;
		ptrs_ast_forin forin;
	}

	struct ptrs_ast
	{
		ptrs_ast_arg arg;
		void function(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope) handler;
		int codepos;
		char *code;
		const char *file;
	}
	alias ptrs_ast ptrs_ast_t;

	struct ptrs_astlist
	{
		ptrs_ast *entry;
		ptrs_astlist *next;
	}

	ptrs_ast_t *ptrs_parse(char *src, const char *filename);
}
