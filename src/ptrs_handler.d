module PointerScript.handler;

import PointerScript.def;
import PointerScript.parser;

extern (C)
{
	void ptrs_handle_asterror(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_asterror, node);
	}

	void ptrs_handle_body(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_body, node);
	}

	void ptrs_handle_define(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_define, node);
	}

	void ptrs_handle_array(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_array, node);
	}

	void ptrs_handle_vararray(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_vararray, node);
	}

	void ptrs_handle_import(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_import, node);
	}

	void ptrs_handle_return(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_return, node);
	}

	void ptrs_handle_break(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_break, node);
	}

	void ptrs_handle_continue(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_continue, node);
	}

	void ptrs_handle_throw(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_throw, node);
	}

	void ptrs_handle_trycatch(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_trycatch, node);
	}

	void ptrs_handle_function(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_function, node);
	}

	void ptrs_handle_struct(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_struct, node);
	}

	void ptrs_handle_if(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_if, node);
	}

	void ptrs_handle_while(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_while, node);
	}

	void ptrs_handle_dowhile(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_dowhile, node);
	}

	void ptrs_handle_for(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_for, node);
	}

	void ptrs_handle_forin(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_forin, node);
	}

	void ptrs_handle_exprstatement(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_exprstatement, node);
	}


	void ptrs_handle_call(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_call, node);
	}

	void ptrs_handle_arrayexpr(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_arrayexpr, node);
	}

	void ptrs_handle_vararrayexpr(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_vararrayexpr, node);
	}

	void ptrs_handle_new(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_new, node);
	}

	void ptrs_handle_member(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_member, node);
	}

	void ptrs_handle_index(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_index, node);
	}

	void ptrs_handle_cast(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_cast, node);
	}

	void ptrs_handle_identifier(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_identifier, node);
	}

	void ptrs_handle_constant(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_constant, node);
	}


	void ptrs_handle_op_ternary(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_ternary, node);
	}

	void ptrs_handle_op_equal(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_equal, node);
	}

	void ptrs_handle_op_inequal(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_inequal, node);
	}

	void ptrs_handle_op_lessequal(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_lessequal, node);
	}

	void ptrs_handle_op_greaterequal(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_greaterequal, node);
	}

	void ptrs_handle_op_less(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_less, node);
	}

	void ptrs_handle_op_greater(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_greater, node);
	}

	void ptrs_handle_op_assign(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_assign, node);
	}

	void ptrs_handle_op_addassign(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_addassign, node);
	}

	void ptrs_handle_op_subassign(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_subassign, node);
	}

	void ptrs_handle_op_mulassign(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_mulassign, node);
	}

	void ptrs_handle_op_divassign(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_divassign, node);
	}

	void ptrs_handle_op_modassign(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_modassign, node);
	}

	void ptrs_handle_op_shrassign(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_shrassign, node);
	}

	void ptrs_handle_op_shlassign(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_shlassign, node);
	}

	void ptrs_handle_op_andassign(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_andassign, node);
	}

	void ptrs_handle_op_xorassign(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_xorassign, node);
	}

	void ptrs_handle_op_orassign(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_orassign, node);
	}

	void ptrs_handle_op_logicor(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_logicor, node);
	}

	void ptrs_handle_op_logicand(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_logicand, node);
	}

	void ptrs_handle_op_or(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_or, node);
	}

	void ptrs_handle_op_xor(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_xor, node);
	}

	void ptrs_handle_op_and(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_and, node);
	}

	void ptrs_handle_op_shr(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_shr, node);
	}

	void ptrs_handle_op_shl(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_shl, node);
	}

	void ptrs_handle_op_add(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_add, node);
	}

	void ptrs_handle_op_sub(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_sub, node);
	}

	void ptrs_handle_op_mul(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_mul, node);
	}

	void ptrs_handle_op_div(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_div, node);
	}

	void ptrs_handle_op_mod(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_op_mod, node);
	}


	void ptrs_handle_prefix_typeof(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_prefix_typeof, node);
	}

	void ptrs_handle_prefix_inc(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_prefix_inc, node);
	}

	void ptrs_handle_prefix_dec(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_prefix_dec, node);
	}

	void ptrs_handle_prefix_logicnot(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_prefix_logicnot, node);
	}

	void ptrs_handle_prefix_not(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_prefix_not, node);
	}

	void ptrs_handle_prefix_address(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_prefix_address, node);
	}

	void ptrs_handle_prefix_dereference(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_prefix_dereference, node);
	}

	void ptrs_handle_prefix_plus(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_prefix_plus, node);
	}

	void ptrs_handle_prefix_minus(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_prefix_minus, node);
	}


	void ptrs_handle_suffix_inc(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_suffix_inc, node);
	}

	void ptrs_handle_suffix_dec(ptrs_ast_t *node, ptrs_var_t *result, ptrs_scope_t *_scope)
	{
		currentParser.callHandler(AstHandlerType.handle_suffix_dec, node);
	}
}
