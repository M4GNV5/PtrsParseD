module PointerScript.parser;

import PointerScript.def;

enum AstHandlerType
{
	handle_asterror,

	handle_body,
	handle_define,
	handle_array,
	handle_vararray,
	handle_import,
	handle_return,
	handle_break,
	handle_continue,
	handle_throw,
	handle_trycatch,
	handle_function,
	handle_struct,
	handle_if,
	handle_while,
	handle_dowhile,
	handle_for,
	handle_forin,
	handle_exprstatement,

	handle_call,
	handle_arrayexpr,
	handle_vararrayexpr,
	handle_new,
	handle_member,
	handle_index,
	handle_cast,
	handle_identifier,
	handle_constant,

	handle_op_ternary,
	handle_op_equal,
	handle_op_inequal,
	handle_op_lessequal,
	handle_op_greaterequal,
	handle_op_less,
	handle_op_greater,
	handle_op_assign,
	handle_op_addassign,
	handle_op_subassign,
	handle_op_mulassign,
	handle_op_divassign,
	handle_op_modassign,
	handle_op_shrassign,
	handle_op_shlassign,
	handle_op_andassign,
	handle_op_xorassign,
	handle_op_orassign,
	handle_op_logicor,
	handle_op_logicand,
	handle_op_or,
	handle_op_xor,
	handle_op_and,
	handle_op_shr,
	handle_op_shl,
	handle_op_add,
	handle_op_sub,
	handle_op_mul,
	handle_op_div,
	handle_op_mod,

	handle_prefix_typeof,
	handle_prefix_inc,
	handle_prefix_dec,
	handle_prefix_logicnot,
	handle_prefix_not,
	handle_prefix_address,
	handle_prefix_dereference,
	handle_prefix_plus,
	handle_prefix_minus,

	handle_suffix_inc,
	handle_suffix_dec
}

Parser currentParser = null;

class Parser
{
	private void delegate(ptrs_ast_t *node)[AstHandlerType.max + 1] handler;

	void setHandler(AstHandlerType type, void delegate(ptrs_ast_t *node) handler)
	{
		this.handler[type] = handler;
	}

	void callHandler(AstHandlerType type, ptrs_ast_t *node)
	{
		this.handler[type](node);
	}

	ptrs_ast_t *parse(string code, string origin)
	{
		char[] _code = code.dup;
		_code ~= '\0';

		char[] _origin = origin.dup;
		_origin ~= '\0';

		return ptrs_parse(cast(char *)_code, cast(char *)_origin);
	}

	//dont multithread this
	void visit(ptrs_ast_t *ast)
	{
		Parser old = currentParser;
		currentParser = this;
		ast.handler(ast, null, null);
		currentParser = old;
	}
}
