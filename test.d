import PointerScript.parser;
import PointerScript.def;
import std.stdio;

void main()
{
	Parser parser = new Parser();
	parser.setHandler(AstHandlerType.handle_body, delegate(ptrs_ast_t *ast)
	{
		printf("Enter body %d\n", ast.codepos);

		ptrs_astlist *list = ast.arg.astlist;
		while(list != null)
		{
			parser.visit(list.entry);
			list = list.next;
		}

		printf("Exit body %d\n", ast.codepos);
	});
	parser.setHandler(AstHandlerType.handle_define, delegate(ptrs_ast_t *ast)
	{
		printf("Defining variable with name '%s' ", ast.arg.define.name);
		if(ast.arg.define.value == null)
		{
			printf("and no initial value\n");
		}
		else
		{
			printf("initial value: ");
			parser.visit(ast.arg.define.value);
		}
	});
	parser.setHandler(AstHandlerType.handle_constant, delegate(ptrs_ast_t *ast)
	{
		//lets only assume integer constants for now
		printf("constant %ld\n", ast.arg.constval.value.intval);
	});
	parser.setHandler(AstHandlerType.handle_identifier, delegate(ptrs_ast_t *ast)
	{
		printf("identifier '%s'\n", ast.arg.strval);
	});

	ptrs_ast_t *ast = parser.parse("var x = 3; var y; var z = x;", "<no origin>");
	parser.visit(ast);
}
