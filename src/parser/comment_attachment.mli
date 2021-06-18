
module Ast = Flow_ast
val id : ('a -> 'a) -> 'a -> 'b -> ('a -> 'b) -> 'b
val map_loc : ('a -> 'b -> 'b) -> 'a * 'b -> 'a * 'b
val map_opt : ('a -> 'a) -> 'a option -> 'a option
val id_list_last : ('a -> 'a) -> 'a list -> 'a list
class ['a] trailing_comments_remover :
  after_pos:Loc.position ->
  object
    constraint 'a = Loc.t
    method array :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Array.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Array.t
    method array_element :
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Array.element ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Array.element
    method array_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Array.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Array.t
    method arrow_function :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Function.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Function.t
    method assignment :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Assignment.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Assignment.t
    method assignment_pattern :
      ('a, 'a) Flow_ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method bigint_literal_type :
      'a ->
      'a Flow_ast_mapper.Ast.BigIntLiteral.t ->
      'a Flow_ast_mapper.Ast.BigIntLiteral.t
    method binary :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Binary.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Binary.t
    method binding_pattern :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method block :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Block.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Block.t
    method boolean_literal_type :
      'a ->
      'a Flow_ast_mapper.Ast.BooleanLiteral.t ->
      'a Flow_ast_mapper.Ast.BooleanLiteral.t
    method break :
      'a ->
      'a Flow_ast_mapper.Ast.Statement.Break.t ->
      'a Flow_ast_mapper.Ast.Statement.Break.t
    method call :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Call.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Call.t
    method call_arguments :
      ('a, 'a) Flow_ast.Expression.ArgList.t ->
      ('a, 'a) Flow_ast.Expression.ArgList.t
    method call_type_arg :
      ('a, 'a) Flow_ast_mapper.Ast.Expression.CallTypeArg.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.CallTypeArg.t
    method call_type_args :
      ('a, 'a) Flow_ast.Expression.CallTypeArgs.t ->
      ('a, 'a) Flow_ast.Expression.CallTypeArgs.t
    method catch_body :
      'a * ('a, 'a) Flow_ast_mapper.Ast.Statement.Block.t ->
      'a * ('a, 'a) Flow_ast_mapper.Ast.Statement.Block.t
    method catch_clause :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Try.CatchClause.t' ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Try.CatchClause.t'
    method catch_clause_pattern :
      ('a, 'a) Flow_ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method class_ :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.t
    method class_body :
      ('a, 'a) Flow_ast.Class.Body.t -> ('a, 'a) Flow_ast.Class.Body.t
    method class_decorator :
      ('a, 'a) Flow_ast_mapper.Ast.Class.Decorator.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Decorator.t
    method class_element :
      ('a, 'a) Flow_ast_mapper.Ast.Class.Body.element ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Body.element
    method class_extends :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Extends.t' ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Extends.t'
    method class_identifier :
      ('a, 'a) Flow_ast.Identifier.t -> ('a, 'a) Flow_ast.Identifier.t
    method class_implements :
      ('a, 'a) Flow_ast_mapper.Ast.Class.Implements.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Implements.t
    method class_implements_interface :
      ('a, 'a) Flow_ast_mapper.Ast.Class.Implements.Interface.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Implements.Interface.t
    method class_method :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Method.t' ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Method.t'
    method class_private_field :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.PrivateField.t' ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.PrivateField.t'
    method class_property :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Property.t' ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Property.t'
    method class_property_value :
      ('a, 'a) Flow_ast_mapper.Ast.Class.Property.value ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Property.value
    method comment : 'a Flow_ast.Comment.t -> 'a Flow_ast.Comment.t
    method comprehension :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Comprehension.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Comprehension.t
    method computed_key :
      ('a, 'a) Flow_ast_mapper.Ast.ComputedKey.t ->
      ('a, 'a) Flow_ast_mapper.Ast.ComputedKey.t
    method conditional :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Conditional.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Conditional.t
    method continue :
      'a ->
      'a Flow_ast_mapper.Ast.Statement.Continue.t ->
      'a Flow_ast_mapper.Ast.Statement.Continue.t
    method debugger :
      'a ->
      'a Flow_ast_mapper.Ast.Statement.Debugger.t ->
      'a Flow_ast_mapper.Ast.Statement.Debugger.t
    method declare_class :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareClass.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareClass.t
    method declare_export_declaration :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareExportDeclaration.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareExportDeclaration.t
    method declare_export_declaration_decl :
      ('a, 'a)
      Flow_ast_mapper.Ast.Statement.DeclareExportDeclaration.declaration ->
      ('a, 'a)
      Flow_ast_mapper.Ast.Statement.DeclareExportDeclaration.declaration
    method declare_function :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareFunction.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareFunction.t
    method declare_interface :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Interface.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Interface.t
    method declare_module :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareModule.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareModule.t
    method declare_module_exports :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareModuleExports.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareModuleExports.t
    method declare_type_alias :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.TypeAlias.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.TypeAlias.t
    method declare_variable :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareVariable.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareVariable.t
    method do_while :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DoWhile.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DoWhile.t
    method empty :
      'a ->
      'a Flow_ast_mapper.Ast.Statement.Empty.t ->
      'a Flow_ast_mapper.Ast.Statement.Empty.t
    method enum_body :
      'a Flow_ast_mapper.Ast.Statement.EnumDeclaration.body ->
      'a Flow_ast_mapper.Ast.Statement.EnumDeclaration.body
    method enum_boolean_body :
      'a Flow_ast_mapper.Ast.Statement.EnumDeclaration.BooleanBody.t ->
      'a Flow_ast_mapper.Ast.Statement.EnumDeclaration.BooleanBody.t
    method enum_boolean_member :
      ('a Flow_ast_mapper.Ast.BooleanLiteral.t, 'a)
      Flow_ast.Statement.EnumDeclaration.InitializedMember.t ->
      ('a Flow_ast_mapper.Ast.BooleanLiteral.t, 'a)
      Flow_ast.Statement.EnumDeclaration.InitializedMember.t
    method enum_declaration :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.EnumDeclaration.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.EnumDeclaration.t
    method enum_defaulted_member :
      'a Flow_ast.Statement.EnumDeclaration.DefaultedMember.t ->
      'a Flow_ast.Statement.EnumDeclaration.DefaultedMember.t
    method enum_number_body :
      'a Flow_ast_mapper.Ast.Statement.EnumDeclaration.NumberBody.t ->
      'a Flow_ast_mapper.Ast.Statement.EnumDeclaration.NumberBody.t
    method enum_number_member :
      ('a Flow_ast_mapper.Ast.NumberLiteral.t, 'a)
      Flow_ast.Statement.EnumDeclaration.InitializedMember.t ->
      ('a Flow_ast_mapper.Ast.NumberLiteral.t, 'a)
      Flow_ast.Statement.EnumDeclaration.InitializedMember.t
    method enum_string_body :
      'a Flow_ast_mapper.Ast.Statement.EnumDeclaration.StringBody.t ->
      'a Flow_ast_mapper.Ast.Statement.EnumDeclaration.StringBody.t
    method enum_string_member :
      ('a Flow_ast_mapper.Ast.StringLiteral.t, 'a)
      Flow_ast.Statement.EnumDeclaration.InitializedMember.t ->
      ('a Flow_ast_mapper.Ast.StringLiteral.t, 'a)
      Flow_ast.Statement.EnumDeclaration.InitializedMember.t
    method enum_symbol_body :
      'a Flow_ast_mapper.Ast.Statement.EnumDeclaration.SymbolBody.t ->
      'a Flow_ast_mapper.Ast.Statement.EnumDeclaration.SymbolBody.t
    method export_batch_specifier :
      'a
      Flow_ast_mapper.Ast.Statement.ExportNamedDeclaration.ExportBatchSpecifier.t ->
      'a
      Flow_ast_mapper.Ast.Statement.ExportNamedDeclaration.ExportBatchSpecifier.t
    method export_default_declaration :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ExportDefaultDeclaration.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ExportDefaultDeclaration.t
    method export_default_declaration_decl :
      ('a, 'a)
      Flow_ast_mapper.Ast.Statement.ExportDefaultDeclaration.declaration ->
      ('a, 'a)
      Flow_ast_mapper.Ast.Statement.ExportDefaultDeclaration.declaration
    method export_named_declaration :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ExportNamedDeclaration.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ExportNamedDeclaration.t
    method export_named_declaration_specifier :
      'a
      Flow_ast_mapper.Ast.Statement.ExportNamedDeclaration.ExportSpecifier.t ->
      'a
      Flow_ast_mapper.Ast.Statement.ExportNamedDeclaration.ExportSpecifier.t
    method export_named_specifier :
      'a Flow_ast_mapper.Ast.Statement.ExportNamedDeclaration.specifier ->
      'a Flow_ast_mapper.Ast.Statement.ExportNamedDeclaration.specifier
    method expression :
      ('a, 'a) Flow_ast_mapper.Ast.Expression.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.t
    method expression_or_spread :
      ('a, 'a) Flow_ast_mapper.Ast.Expression.expression_or_spread ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.expression_or_spread
    method expression_statement :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Expression.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Expression.t
    method for_in_assignment_pattern :
      ('a, 'a) Flow_ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method for_in_left_declaration :
      'a * ('a, 'a) Flow_ast_mapper.Ast.Statement.VariableDeclaration.t ->
      'a * ('a, 'a) Flow_ast_mapper.Ast.Statement.VariableDeclaration.t
    method for_in_statement :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ForIn.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ForIn.t
    method for_in_statement_lhs :
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ForIn.left ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ForIn.left
    method for_init_declaration :
      'a * ('a, 'a) Flow_ast_mapper.Ast.Statement.VariableDeclaration.t ->
      'a * ('a, 'a) Flow_ast_mapper.Ast.Statement.VariableDeclaration.t
    method for_of_assignment_pattern :
      ('a, 'a) Flow_ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method for_of_left_declaration :
      'a * ('a, 'a) Flow_ast_mapper.Ast.Statement.VariableDeclaration.t ->
      'a * ('a, 'a) Flow_ast_mapper.Ast.Statement.VariableDeclaration.t
    method for_of_statement :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ForOf.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ForOf.t
    method for_of_statement_lhs :
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ForOf.left ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ForOf.left
    method for_statement :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.For.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.For.t
    method for_statement_init :
      ('a, 'a) Flow_ast_mapper.Ast.Statement.For.init ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.For.init
    method function_ :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Function.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Function.t
    method function_body :
      'a * ('a, 'a) Flow_ast_mapper.Ast.Statement.Block.t ->
      'a * ('a, 'a) Flow_ast_mapper.Ast.Statement.Block.t
    method function_body_any :
      ('a, 'a) Flow_ast_mapper.Ast.Function.body ->
      ('a, 'a) Flow_ast_mapper.Ast.Function.body
    method function_declaration :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Function.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Function.t
    method function_expression :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Function.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Function.t
    method function_identifier :
      ('a, 'a) Flow_ast.Identifier.t -> ('a, 'a) Flow_ast.Identifier.t
    method function_param :
      ('a, 'a) Flow_ast.Function.Param.t ->
      ('a, 'a) Flow_ast.Function.Param.t
    method function_param_pattern :
      ('a, 'a) Flow_ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method function_param_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Function.Param.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Function.Param.t
    method function_params :
      ('a, 'a) Flow_ast_mapper.Ast.Function.Params.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Function.Params.t
    method function_rest_param :
      ('a, 'a) Flow_ast.Function.RestParam.t ->
      ('a, 'a) Flow_ast.Function.RestParam.t
    method function_rest_param_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Function.RestParam.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Function.RestParam.t
    method function_this_param :
      ('a, 'a) Flow_ast.Function.ThisParam.t ->
      ('a, 'a) Flow_ast.Function.ThisParam.t
    method function_this_param_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Function.ThisParam.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Function.ThisParam.t
    method function_type :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Function.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Function.t
    method generator :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Generator.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Generator.t
    method generic_identifier_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Generic.Identifier.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Generic.Identifier.t
    method generic_qualified_identifier_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Generic.Identifier.qualified ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Generic.Identifier.qualified
    method generic_type :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Generic.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Generic.t
    method identifier :
      ('a, 'a) Flow_ast.Identifier.t -> ('a, 'a) Flow_ast.Identifier.t
    method if_alternate_statement :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.If.Alternate.t' ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.If.Alternate.t'
    method if_consequent_statement :
      has_else:bool ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.t
    method if_statement :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.If.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.If.t
    method import :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Import.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Import.t
    method import_declaration :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ImportDeclaration.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ImportDeclaration.t
    method import_default_specifier :
      ('a, 'a) Flow_ast.Identifier.t -> ('a, 'a) Flow_ast.Identifier.t
    method import_named_specifier :
      import_kind:Flow_ast_mapper.Ast.Statement.ImportDeclaration.import_kind ->
      ('a, 'a)
      Flow_ast_mapper.Ast.Statement.ImportDeclaration.named_specifier ->
      ('a, 'a)
      Flow_ast_mapper.Ast.Statement.ImportDeclaration.named_specifier
    method import_namespace_specifier :
      'a -> ('a, 'a) Flow_ast.Identifier.t -> ('a, 'a) Flow_ast.Identifier.t
    method import_specifier :
      import_kind:Flow_ast_mapper.Ast.Statement.ImportDeclaration.import_kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ImportDeclaration.specifier ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ImportDeclaration.specifier
    method indexed_access :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.IndexedAccess.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.IndexedAccess.t
    method interface :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Interface.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Interface.t
    method interface_declaration :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Interface.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Interface.t
    method interface_type :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Interface.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Interface.t
    method intersection_type :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Intersection.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Intersection.t
    method jsx_attribute :
      ('a, 'a) Flow_ast.JSX.Attribute.t -> ('a, 'a) Flow_ast.JSX.Attribute.t
    method jsx_attribute_name :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Attribute.name ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Attribute.name
    method jsx_attribute_name_identifier :
      ('a, 'a) Flow_ast.JSX.Identifier.t ->
      ('a, 'a) Flow_ast.JSX.Identifier.t
    method jsx_attribute_name_namespaced :
      ('a, 'a) Flow_ast.JSX.NamespacedName.t ->
      ('a, 'a) Flow_ast.JSX.NamespacedName.t
    method jsx_attribute_value :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Attribute.value ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Attribute.value
    method jsx_attribute_value_expression :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.ExpressionContainer.t ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.ExpressionContainer.t
    method jsx_attribute_value_literal :
      'a ->
      'a Flow_ast_mapper.Ast.Literal.t -> 'a Flow_ast_mapper.Ast.Literal.t
    method jsx_child :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.child ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.child
    method jsx_children :
      'a * ('a, 'a) Flow_ast_mapper.Ast.JSX.child list ->
      'a * ('a, 'a) Flow_ast_mapper.Ast.JSX.child list
    method jsx_closing_element :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Closing.t ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Closing.t
    method jsx_element :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.element ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.element
    method jsx_element_name :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.name ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.name
    method jsx_element_name_identifier :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Identifier.t ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Identifier.t
    method jsx_element_name_member_expression :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.MemberExpression.t ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.MemberExpression.t
    method jsx_element_name_namespaced :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.NamespacedName.t ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.NamespacedName.t
    method jsx_expression :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.ExpressionContainer.t ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.ExpressionContainer.t
    method jsx_fragment :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.fragment ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.fragment
    method jsx_identifier :
      ('a, 'a) Flow_ast.JSX.Identifier.t ->
      ('a, 'a) Flow_ast.JSX.Identifier.t
    method jsx_member_expression :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.MemberExpression.t ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.MemberExpression.t
    method jsx_member_expression_identifier :
      ('a, 'a) Flow_ast.JSX.Identifier.t ->
      ('a, 'a) Flow_ast.JSX.Identifier.t
    method jsx_member_expression_object :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.MemberExpression._object ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.MemberExpression._object
    method jsx_namespaced_name :
      ('a, 'a) Flow_ast.JSX.NamespacedName.t ->
      ('a, 'a) Flow_ast.JSX.NamespacedName.t
    method jsx_opening_attribute :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Opening.attribute ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Opening.attribute
    method jsx_opening_element :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Opening.t ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Opening.t
    method jsx_spread_attribute :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.SpreadAttribute.t' ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.SpreadAttribute.t'
    method jsx_spread_child :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.SpreadChild.t ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.SpreadChild.t
    method label_identifier :
      ('a, 'a) Flow_ast.Identifier.t -> ('a, 'a) Flow_ast.Identifier.t
    method labeled_statement :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Labeled.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Labeled.t
    method literal :
      'a ->
      'a Flow_ast_mapper.Ast.Literal.t -> 'a Flow_ast_mapper.Ast.Literal.t
    method logical :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Logical.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Logical.t
    method member :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Member.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Member.t
    method member_private_name :
      'a Flow_ast.PrivateName.t -> 'a Flow_ast.PrivateName.t
    method member_property :
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Member.property ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Member.property
    method member_property_expression :
      ('a, 'a) Flow_ast.Expression.t -> ('a, 'a) Flow_ast.Expression.t
    method member_property_identifier :
      ('a, 'a) Flow_ast.Identifier.t -> ('a, 'a) Flow_ast.Identifier.t
    method meta_property :
      'a ->
      'a Flow_ast_mapper.Ast.Expression.MetaProperty.t ->
      'a Flow_ast_mapper.Ast.Expression.MetaProperty.t
    method new_ :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.New.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.New.t
    method nullable_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Nullable.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Nullable.t
    method number_literal_type :
      'a ->
      'a Flow_ast_mapper.Ast.NumberLiteral.t ->
      'a Flow_ast_mapper.Ast.NumberLiteral.t
    method object_ :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Object.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Object.t
    method object_call_property_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.CallProperty.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.CallProperty.t
    method object_indexer_property_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.Indexer.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.Indexer.t
    method object_internal_slot_property_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.InternalSlot.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.InternalSlot.t
    method object_key :
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Object.Property.key ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Object.Property.key
    method object_key_computed :
      ('a, 'a) Flow_ast.ComputedKey.t -> ('a, 'a) Flow_ast.ComputedKey.t
    method object_key_identifier :
      ('a, 'a) Flow_ast.Identifier.t -> ('a, 'a) Flow_ast.Identifier.t
    method object_key_literal :
      'a * 'a Flow_ast_mapper.Ast.Literal.t ->
      'a * 'a Flow_ast_mapper.Ast.Literal.t
    method object_property :
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Object.Property.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Object.Property.t
    method object_property_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.Property.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.Property.t
    method object_property_value_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.Property.value ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.Property.value
    method object_spread_property_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.SpreadProperty.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.SpreadProperty.t
    method object_type :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.t
    method object_type_property_getter :
      'a * ('a, 'a) Flow_ast_mapper.Ast.Type.Function.t ->
      'a * ('a, 'a) Flow_ast_mapper.Ast.Type.Function.t
    method object_type_property_setter :
      'a * ('a, 'a) Flow_ast_mapper.Ast.Type.Function.t ->
      'a * ('a, 'a) Flow_ast_mapper.Ast.Type.Function.t
    method opaque_type :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.OpaqueType.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.OpaqueType.t
    method optional_call :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.OptionalCall.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.OptionalCall.t
    method optional_indexed_access :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.OptionalIndexedAccess.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.OptionalIndexedAccess.t
    method optional_member :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.OptionalMember.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.OptionalMember.t
    method pattern :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method pattern_array_e :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.Array.element ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.Array.element
    method pattern_array_element :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.Array.Element.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.Array.Element.t
    method pattern_array_element_pattern :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method pattern_array_rest_element :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast.Pattern.RestElement.t ->
      ('a, 'a) Flow_ast.Pattern.RestElement.t
    method pattern_array_rest_element_pattern :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method pattern_assignment_pattern :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method pattern_expression :
      ('a, 'a) Flow_ast.Expression.t -> ('a, 'a) Flow_ast.Expression.t
    method pattern_identifier :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Identifier.t ->
      ('a, 'a) Flow_ast.Identifier.t
    method pattern_literal :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      'a ->
      'a Flow_ast_mapper.Ast.Literal.t -> 'a Flow_ast_mapper.Ast.Literal.t
    method pattern_object_p :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.Object.property ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.Object.property
    method pattern_object_property :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.Object.Property.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.Object.Property.t
    method pattern_object_property_computed_key :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast.ComputedKey.t -> ('a, 'a) Flow_ast.ComputedKey.t
    method pattern_object_property_identifier_key :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast.Identifier.t -> ('a, 'a) Flow_ast.Identifier.t
    method pattern_object_property_key :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.Object.Property.key ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.Object.Property.key
    method pattern_object_property_literal_key :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      'a * 'a Flow_ast_mapper.Ast.Literal.t ->
      'a * 'a Flow_ast_mapper.Ast.Literal.t
    method pattern_object_property_pattern :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method pattern_object_rest_property :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast.Pattern.RestElement.t ->
      ('a, 'a) Flow_ast.Pattern.RestElement.t
    method pattern_object_rest_property_pattern :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method predicate :
      ('a, 'a) Flow_ast.Type.Predicate.t ->
      ('a, 'a) Flow_ast.Type.Predicate.t
    method predicate_expression :
      ('a, 'a) Flow_ast.Expression.t -> ('a, 'a) Flow_ast.Expression.t
    method private_name :
      'a Flow_ast.PrivateName.t -> 'a Flow_ast.PrivateName.t
    method program :
      ('a, 'a) Flow_ast_mapper.Ast.Program.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Program.t
    method return :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Return.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Return.t
    method sequence :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Sequence.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Sequence.t
    method spread_element :
      ('a, 'a) Flow_ast.Expression.SpreadElement.t ->
      ('a, 'a) Flow_ast.Expression.SpreadElement.t
    method spread_property :
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Object.SpreadProperty.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Object.SpreadProperty.t
    method statement :
      ('a, 'a) Flow_ast_mapper.Ast.Statement.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.t
    method statement_fork_point :
      ('a, 'a) Flow_ast_mapper.Ast.Statement.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.t list
    method statement_list :
      ('a, 'a) Flow_ast.Statement.t list ->
      ('a, 'a) Flow_ast.Statement.t list
    method string_literal_type :
      'a ->
      'a Flow_ast_mapper.Ast.StringLiteral.t ->
      'a Flow_ast_mapper.Ast.StringLiteral.t
    method super_expression :
      'a ->
      'a Flow_ast_mapper.Ast.Expression.Super.t ->
      'a Flow_ast_mapper.Ast.Expression.Super.t
    method switch :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Switch.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Switch.t
    method switch_case :
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Switch.Case.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Switch.Case.t
    method syntax :
      ('a, 'internal) Flow_ast_mapper.Ast.Syntax.t ->
      ('a, 'internal) Flow_ast_mapper.Ast.Syntax.t
    method syntax_opt :
      ('a, 'internal) Flow_ast_mapper.Ast.Syntax.t option ->
      ('a, 'internal) Flow_ast_mapper.Ast.Syntax.t option
    method tagged_template :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.TaggedTemplate.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.TaggedTemplate.t
    method template_literal :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.TemplateLiteral.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.TemplateLiteral.t
    method template_literal_element :
      'a Flow_ast_mapper.Ast.Expression.TemplateLiteral.Element.t ->
      'a Flow_ast_mapper.Ast.Expression.TemplateLiteral.Element.t
    method this_expression :
      'a ->
      'a Flow_ast_mapper.Ast.Expression.This.t ->
      'a Flow_ast_mapper.Ast.Expression.This.t
    method throw :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Throw.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Throw.t
    method toplevel_statement_list :
      ('a, 'a) Flow_ast.Statement.t list ->
      ('a, 'a) Flow_ast.Statement.t list
    method try_catch :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Try.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Try.t
    method tuple_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Tuple.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Tuple.t
    method type_ : ('a, 'a) Flow_ast.Type.t -> ('a, 'a) Flow_ast.Type.t
    method type_alias :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.TypeAlias.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.TypeAlias.t
    method type_annotation :
      ('a, 'a) Flow_ast.Type.annotation -> ('a, 'a) Flow_ast.Type.annotation
    method type_annotation_hint :
      ('a, 'a) Flow_ast_mapper.Ast.Type.annotation_or_hint ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.annotation_or_hint
    method type_args :
      ('a, 'a) Flow_ast.Type.TypeArgs.t -> ('a, 'a) Flow_ast.Type.TypeArgs.t
    method type_cast :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.TypeCast.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.TypeCast.t
    method type_identifier :
      ('a, 'a) Flow_ast.Identifier.t -> ('a, 'a) Flow_ast.Identifier.t
    method type_param :
      ('a, 'a) Flow_ast.Type.TypeParam.t ->
      ('a, 'a) Flow_ast.Type.TypeParam.t
    method type_params :
      ('a, 'a) Flow_ast.Type.TypeParams.t ->
      ('a, 'a) Flow_ast.Type.TypeParams.t
    method typeof_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Typeof.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Typeof.t
    method unary_expression :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Unary.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Unary.t
    method union_type :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Union.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Union.t
    method update_expression :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Update.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Update.t
    method variable_declaration :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.VariableDeclaration.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.VariableDeclaration.t
    method variable_declarator :
      kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.VariableDeclaration.Declarator.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.VariableDeclaration.Declarator.t
    method variable_declarator_pattern :
      kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method variance :
      'a Flow_ast_mapper.Ast.Variance.t -> 'a Flow_ast_mapper.Ast.Variance.t
    method variance_opt :
      'a Flow_ast.Variance.t option -> 'a Flow_ast.Variance.t option
    method while_ :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.While.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.While.t
    method with_ :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.With.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.With.t
    method yield :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Yield.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Yield.t
  end
type trailing_and_remover_result = {
  trailing : Loc.t Flow_ast.Comment.t list;
  remove_trailing :
    'a. 'a -> (Loc.t trailing_comments_remover -> 'a -> 'a) -> 'a;
}
val trailing_and_remover_after_last_loc :
  Parser_env.env -> trailing_and_remover_result
val trailing_and_remover_after_last_line :
  Parser_env.env -> trailing_and_remover_result
val trailing_and_remover : Parser_env.env -> trailing_and_remover_result
val id_remove_trailing :
  Parser_env.env ->
  (Loc.t, Loc.t) Flow_ast.Identifier.t ->
  (Loc.t, Loc.t) Flow_ast.Identifier.t
val expression_remove_trailing :
  Parser_env.env ->
  (Loc.t, Loc.t) Flow_ast_mapper.Ast.Expression.t ->
  (Loc.t, Loc.t) Flow_ast_mapper.Ast.Expression.t
val block_remove_trailing :
  Parser_env.env ->
  Loc.t * (Loc.t, Loc.t) Flow_ast_mapper.Ast.Statement.Block.t ->
  Loc.t * (Loc.t, Loc.t) Flow_ast_mapper.Ast.Statement.Block.t
val type_params_remove_trailing :
  Parser_env.env ->
  (Loc.t, Loc.t) Flow_ast.Type.TypeParams.t option ->
  (Loc.t, Loc.t) Flow_ast.Type.TypeParams.t option
val type_remove_trailing :
  Parser_env.env ->
  (Loc.t, Loc.t) Flow_ast.Type.t -> (Loc.t, Loc.t) Flow_ast.Type.t
val type_annotation_hint_remove_trailing :
  Parser_env.env ->
  (Loc.t, Loc.t) Flow_ast_mapper.Ast.Type.annotation_or_hint ->
  (Loc.t, Loc.t) Flow_ast_mapper.Ast.Type.annotation_or_hint
val function_params_remove_trailing :
  Parser_env.env ->
  (Loc.t, Loc.t) Flow_ast_mapper.Ast.Function.Params.t ->
  (Loc.t, Loc.t) Flow_ast_mapper.Ast.Function.Params.t
val predicate_remove_trailing :
  Parser_env.env ->
  (Loc.t, Loc.t) Flow_ast.Type.Predicate.t option ->
  (Loc.t, Loc.t) Flow_ast.Type.Predicate.t option
val object_key_remove_trailing :
  Parser_env.env ->
  (Loc.t, Loc.t) Flow_ast_mapper.Ast.Expression.Object.Property.key ->
  (Loc.t, Loc.t) Flow_ast_mapper.Ast.Expression.Object.Property.key
val generic_type_remove_trailing :
  Parser_env.env ->
  Loc.t * (Loc.t, Loc.t) Flow_ast_mapper.Ast.Type.Generic.t ->
  Loc.t * (Loc.t, Loc.t) Flow_ast_mapper.Ast.Type.Generic.t
val generic_type_list_remove_trailing :
  Parser_env.env ->
  (Loc.t * (Loc.t, Loc.t) Flow_ast_mapper.Ast.Type.Generic.t) list ->
  (Loc.t * (Loc.t, Loc.t) Flow_ast_mapper.Ast.Type.Generic.t) list
val class_implements_remove_trailing :
  Parser_env.env ->
  (Loc.t, Loc.t) Flow_ast_mapper.Ast.Class.Implements.t ->
  (Loc.t, Loc.t) Flow_ast_mapper.Ast.Class.Implements.t
val string_literal_remove_trailing :
  Parser_env.env ->
  Loc.t * Loc.t Flow_ast_mapper.Ast.StringLiteral.t ->
  Loc.t * Loc.t Flow_ast_mapper.Ast.StringLiteral.t
val statement_add_comments :
  (Loc.t, Loc.t) Flow_ast.Statement.t ->
  (Loc.t, unit) Flow_ast.Syntax.t option ->
  (Loc.t, Loc.t) Flow_ast.Statement.t
class ['a] comment_bounds_collector :
  loc:Loc.t ->
  object
    constraint 'a = Loc.t
    val mutable first_leading : ('a * Flow_ast.Comment.t') option
    val mutable last_trailing : ('a * Flow_ast.Comment.t') option
    method array :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Array.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Array.t
    method array_element :
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Array.element ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Array.element
    method array_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Array.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Array.t
    method arrow_function :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Function.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Function.t
    method assignment :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Assignment.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Assignment.t
    method assignment_pattern :
      ('a, 'a) Flow_ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method bigint_literal_type :
      'a ->
      'a Flow_ast_mapper.Ast.BigIntLiteral.t ->
      'a Flow_ast_mapper.Ast.BigIntLiteral.t
    method binary :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Binary.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Binary.t
    method binding_pattern :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method block :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Block.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Block.t
    method boolean_literal_type :
      'a ->
      'a Flow_ast_mapper.Ast.BooleanLiteral.t ->
      'a Flow_ast_mapper.Ast.BooleanLiteral.t
    method break :
      'a ->
      'a Flow_ast_mapper.Ast.Statement.Break.t ->
      'a Flow_ast_mapper.Ast.Statement.Break.t
    method call :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Call.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Call.t
    method call_arguments :
      ('a, 'a) Flow_ast.Expression.ArgList.t ->
      ('a, 'a) Flow_ast.Expression.ArgList.t
    method call_type_arg :
      ('a, 'a) Flow_ast_mapper.Ast.Expression.CallTypeArg.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.CallTypeArg.t
    method call_type_args :
      ('a, 'a) Flow_ast.Expression.CallTypeArgs.t ->
      ('a, 'a) Flow_ast.Expression.CallTypeArgs.t
    method catch_body :
      'a * ('a, 'a) Flow_ast_mapper.Ast.Statement.Block.t ->
      'a * ('a, 'a) Flow_ast_mapper.Ast.Statement.Block.t
    method catch_clause :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Try.CatchClause.t' ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Try.CatchClause.t'
    method catch_clause_pattern :
      ('a, 'a) Flow_ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method class_ :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.t
    method class_body :
      ('a, 'a) Flow_ast.Class.Body.t -> ('a, 'a) Flow_ast.Class.Body.t
    method class_decorator :
      ('a, 'a) Flow_ast_mapper.Ast.Class.Decorator.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Decorator.t
    method class_element :
      ('a, 'a) Flow_ast_mapper.Ast.Class.Body.element ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Body.element
    method class_extends :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Extends.t' ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Extends.t'
    method class_identifier :
      ('a, 'a) Flow_ast.Identifier.t -> ('a, 'a) Flow_ast.Identifier.t
    method class_implements :
      ('a, 'a) Flow_ast_mapper.Ast.Class.Implements.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Implements.t
    method class_implements_interface :
      ('a, 'a) Flow_ast_mapper.Ast.Class.Implements.Interface.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Implements.Interface.t
    method class_method :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Method.t' ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Method.t'
    method class_private_field :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.PrivateField.t' ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.PrivateField.t'
    method class_property :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Property.t' ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Property.t'
    method class_property_value :
      ('a, 'a) Flow_ast_mapper.Ast.Class.Property.value ->
      ('a, 'a) Flow_ast_mapper.Ast.Class.Property.value
    method collect_comments : ('a, 'internal) Flow_ast.Syntax.t -> unit
    method collect_comments_opt :
      ('a, 'a Flow_ast.Comment.t list) Flow_ast.Syntax.t option -> unit
    method comment : 'a Flow_ast.Comment.t -> 'a Flow_ast.Comment.t
    method comment_bounds :
      ('a * Flow_ast.Comment.t') option * ('a * Flow_ast.Comment.t') option
    method comprehension :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Comprehension.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Comprehension.t
    method computed_key :
      ('a, 'a) Flow_ast_mapper.Ast.ComputedKey.t ->
      ('a, 'a) Flow_ast_mapper.Ast.ComputedKey.t
    method conditional :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Conditional.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Conditional.t
    method continue :
      'a ->
      'a Flow_ast_mapper.Ast.Statement.Continue.t ->
      'a Flow_ast_mapper.Ast.Statement.Continue.t
    method debugger :
      'a ->
      'a Flow_ast_mapper.Ast.Statement.Debugger.t ->
      'a Flow_ast_mapper.Ast.Statement.Debugger.t
    method declare_class :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareClass.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareClass.t
    method declare_export_declaration :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareExportDeclaration.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareExportDeclaration.t
    method declare_export_declaration_decl :
      ('a, 'a)
      Flow_ast_mapper.Ast.Statement.DeclareExportDeclaration.declaration ->
      ('a, 'a)
      Flow_ast_mapper.Ast.Statement.DeclareExportDeclaration.declaration
    method declare_function :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareFunction.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareFunction.t
    method declare_interface :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Interface.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Interface.t
    method declare_module :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareModule.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareModule.t
    method declare_module_exports :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareModuleExports.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareModuleExports.t
    method declare_type_alias :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.TypeAlias.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.TypeAlias.t
    method declare_variable :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareVariable.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DeclareVariable.t
    method do_while :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DoWhile.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.DoWhile.t
    method empty :
      'a ->
      'a Flow_ast_mapper.Ast.Statement.Empty.t ->
      'a Flow_ast_mapper.Ast.Statement.Empty.t
    method enum_body :
      'a Flow_ast_mapper.Ast.Statement.EnumDeclaration.body ->
      'a Flow_ast_mapper.Ast.Statement.EnumDeclaration.body
    method enum_boolean_body :
      'a Flow_ast_mapper.Ast.Statement.EnumDeclaration.BooleanBody.t ->
      'a Flow_ast_mapper.Ast.Statement.EnumDeclaration.BooleanBody.t
    method enum_boolean_member :
      ('a Flow_ast_mapper.Ast.BooleanLiteral.t, 'a)
      Flow_ast.Statement.EnumDeclaration.InitializedMember.t ->
      ('a Flow_ast_mapper.Ast.BooleanLiteral.t, 'a)
      Flow_ast.Statement.EnumDeclaration.InitializedMember.t
    method enum_declaration :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.EnumDeclaration.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.EnumDeclaration.t
    method enum_defaulted_member :
      'a Flow_ast.Statement.EnumDeclaration.DefaultedMember.t ->
      'a Flow_ast.Statement.EnumDeclaration.DefaultedMember.t
    method enum_number_body :
      'a Flow_ast_mapper.Ast.Statement.EnumDeclaration.NumberBody.t ->
      'a Flow_ast_mapper.Ast.Statement.EnumDeclaration.NumberBody.t
    method enum_number_member :
      ('a Flow_ast_mapper.Ast.NumberLiteral.t, 'a)
      Flow_ast.Statement.EnumDeclaration.InitializedMember.t ->
      ('a Flow_ast_mapper.Ast.NumberLiteral.t, 'a)
      Flow_ast.Statement.EnumDeclaration.InitializedMember.t
    method enum_string_body :
      'a Flow_ast_mapper.Ast.Statement.EnumDeclaration.StringBody.t ->
      'a Flow_ast_mapper.Ast.Statement.EnumDeclaration.StringBody.t
    method enum_string_member :
      ('a Flow_ast_mapper.Ast.StringLiteral.t, 'a)
      Flow_ast.Statement.EnumDeclaration.InitializedMember.t ->
      ('a Flow_ast_mapper.Ast.StringLiteral.t, 'a)
      Flow_ast.Statement.EnumDeclaration.InitializedMember.t
    method enum_symbol_body :
      'a Flow_ast_mapper.Ast.Statement.EnumDeclaration.SymbolBody.t ->
      'a Flow_ast_mapper.Ast.Statement.EnumDeclaration.SymbolBody.t
    method export_batch_specifier :
      'a
      Flow_ast_mapper.Ast.Statement.ExportNamedDeclaration.ExportBatchSpecifier.t ->
      'a
      Flow_ast_mapper.Ast.Statement.ExportNamedDeclaration.ExportBatchSpecifier.t
    method export_default_declaration :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ExportDefaultDeclaration.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ExportDefaultDeclaration.t
    method export_default_declaration_decl :
      ('a, 'a)
      Flow_ast_mapper.Ast.Statement.ExportDefaultDeclaration.declaration ->
      ('a, 'a)
      Flow_ast_mapper.Ast.Statement.ExportDefaultDeclaration.declaration
    method export_named_declaration :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ExportNamedDeclaration.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ExportNamedDeclaration.t
    method export_named_declaration_specifier :
      'a
      Flow_ast_mapper.Ast.Statement.ExportNamedDeclaration.ExportSpecifier.t ->
      'a
      Flow_ast_mapper.Ast.Statement.ExportNamedDeclaration.ExportSpecifier.t
    method export_named_specifier :
      'a Flow_ast_mapper.Ast.Statement.ExportNamedDeclaration.specifier ->
      'a Flow_ast_mapper.Ast.Statement.ExportNamedDeclaration.specifier
    method expression :
      ('a, 'a) Flow_ast_mapper.Ast.Expression.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.t
    method expression_or_spread :
      ('a, 'a) Flow_ast_mapper.Ast.Expression.expression_or_spread ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.expression_or_spread
    method expression_statement :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Expression.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Expression.t
    method for_in_assignment_pattern :
      ('a, 'a) Flow_ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method for_in_left_declaration :
      'a * ('a, 'a) Flow_ast_mapper.Ast.Statement.VariableDeclaration.t ->
      'a * ('a, 'a) Flow_ast_mapper.Ast.Statement.VariableDeclaration.t
    method for_in_statement :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ForIn.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ForIn.t
    method for_in_statement_lhs :
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ForIn.left ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ForIn.left
    method for_init_declaration :
      'a * ('a, 'a) Flow_ast_mapper.Ast.Statement.VariableDeclaration.t ->
      'a * ('a, 'a) Flow_ast_mapper.Ast.Statement.VariableDeclaration.t
    method for_of_assignment_pattern :
      ('a, 'a) Flow_ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method for_of_left_declaration :
      'a * ('a, 'a) Flow_ast_mapper.Ast.Statement.VariableDeclaration.t ->
      'a * ('a, 'a) Flow_ast_mapper.Ast.Statement.VariableDeclaration.t
    method for_of_statement :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ForOf.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ForOf.t
    method for_of_statement_lhs :
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ForOf.left ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ForOf.left
    method for_statement :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.For.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.For.t
    method for_statement_init :
      ('a, 'a) Flow_ast_mapper.Ast.Statement.For.init ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.For.init
    method function_ :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Function.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Function.t
    method function_body :
      'a * ('a, 'a) Flow_ast_mapper.Ast.Statement.Block.t ->
      'a * ('a, 'a) Flow_ast_mapper.Ast.Statement.Block.t
    method function_body_any :
      ('a, 'a) Flow_ast_mapper.Ast.Function.body ->
      ('a, 'a) Flow_ast_mapper.Ast.Function.body
    method function_declaration :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Function.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Function.t
    method function_expression :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Function.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Function.t
    method function_identifier :
      ('a, 'a) Flow_ast.Identifier.t -> ('a, 'a) Flow_ast.Identifier.t
    method function_param :
      ('a, 'a) Flow_ast.Function.Param.t ->
      ('a, 'a) Flow_ast.Function.Param.t
    method function_param_pattern :
      ('a, 'a) Flow_ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method function_param_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Function.Param.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Function.Param.t
    method function_params :
      ('a, 'a) Flow_ast_mapper.Ast.Function.Params.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Function.Params.t
    method function_rest_param :
      ('a, 'a) Flow_ast.Function.RestParam.t ->
      ('a, 'a) Flow_ast.Function.RestParam.t
    method function_rest_param_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Function.RestParam.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Function.RestParam.t
    method function_this_param :
      ('a, 'a) Flow_ast.Function.ThisParam.t ->
      ('a, 'a) Flow_ast.Function.ThisParam.t
    method function_this_param_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Function.ThisParam.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Function.ThisParam.t
    method function_type :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Function.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Function.t
    method generator :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Generator.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Generator.t
    method generic_identifier_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Generic.Identifier.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Generic.Identifier.t
    method generic_qualified_identifier_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Generic.Identifier.qualified ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Generic.Identifier.qualified
    method generic_type :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Generic.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Generic.t
    method identifier :
      ('a, 'a) Flow_ast.Identifier.t -> ('a, 'a) Flow_ast.Identifier.t
    method if_alternate_statement :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.If.Alternate.t' ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.If.Alternate.t'
    method if_consequent_statement :
      has_else:bool ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.t
    method if_statement :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.If.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.If.t
    method import :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Import.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Import.t
    method import_declaration :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ImportDeclaration.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ImportDeclaration.t
    method import_default_specifier :
      ('a, 'a) Flow_ast.Identifier.t -> ('a, 'a) Flow_ast.Identifier.t
    method import_named_specifier :
      import_kind:Flow_ast_mapper.Ast.Statement.ImportDeclaration.import_kind ->
      ('a, 'a)
      Flow_ast_mapper.Ast.Statement.ImportDeclaration.named_specifier ->
      ('a, 'a)
      Flow_ast_mapper.Ast.Statement.ImportDeclaration.named_specifier
    method import_namespace_specifier :
      'a -> ('a, 'a) Flow_ast.Identifier.t -> ('a, 'a) Flow_ast.Identifier.t
    method import_specifier :
      import_kind:Flow_ast_mapper.Ast.Statement.ImportDeclaration.import_kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ImportDeclaration.specifier ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.ImportDeclaration.specifier
    method indexed_access :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.IndexedAccess.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.IndexedAccess.t
    method interface :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Interface.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Interface.t
    method interface_declaration :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Interface.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Interface.t
    method interface_type :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Interface.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Interface.t
    method intersection_type :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Intersection.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Intersection.t
    method jsx_attribute :
      ('a, 'a) Flow_ast.JSX.Attribute.t -> ('a, 'a) Flow_ast.JSX.Attribute.t
    method jsx_attribute_name :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Attribute.name ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Attribute.name
    method jsx_attribute_name_identifier :
      ('a, 'a) Flow_ast.JSX.Identifier.t ->
      ('a, 'a) Flow_ast.JSX.Identifier.t
    method jsx_attribute_name_namespaced :
      ('a, 'a) Flow_ast.JSX.NamespacedName.t ->
      ('a, 'a) Flow_ast.JSX.NamespacedName.t
    method jsx_attribute_value :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Attribute.value ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Attribute.value
    method jsx_attribute_value_expression :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.ExpressionContainer.t ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.ExpressionContainer.t
    method jsx_attribute_value_literal :
      'a ->
      'a Flow_ast_mapper.Ast.Literal.t -> 'a Flow_ast_mapper.Ast.Literal.t
    method jsx_child :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.child ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.child
    method jsx_children :
      'a * ('a, 'a) Flow_ast_mapper.Ast.JSX.child list ->
      'a * ('a, 'a) Flow_ast_mapper.Ast.JSX.child list
    method jsx_closing_element :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Closing.t ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Closing.t
    method jsx_element :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.element ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.element
    method jsx_element_name :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.name ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.name
    method jsx_element_name_identifier :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Identifier.t ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Identifier.t
    method jsx_element_name_member_expression :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.MemberExpression.t ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.MemberExpression.t
    method jsx_element_name_namespaced :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.NamespacedName.t ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.NamespacedName.t
    method jsx_expression :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.ExpressionContainer.t ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.ExpressionContainer.t
    method jsx_fragment :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.fragment ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.fragment
    method jsx_identifier :
      ('a, 'a) Flow_ast.JSX.Identifier.t ->
      ('a, 'a) Flow_ast.JSX.Identifier.t
    method jsx_member_expression :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.MemberExpression.t ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.MemberExpression.t
    method jsx_member_expression_identifier :
      ('a, 'a) Flow_ast.JSX.Identifier.t ->
      ('a, 'a) Flow_ast.JSX.Identifier.t
    method jsx_member_expression_object :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.MemberExpression._object ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.MemberExpression._object
    method jsx_namespaced_name :
      ('a, 'a) Flow_ast.JSX.NamespacedName.t ->
      ('a, 'a) Flow_ast.JSX.NamespacedName.t
    method jsx_opening_attribute :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Opening.attribute ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Opening.attribute
    method jsx_opening_element :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Opening.t ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.Opening.t
    method jsx_spread_attribute :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.SpreadAttribute.t' ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.SpreadAttribute.t'
    method jsx_spread_child :
      ('a, 'a) Flow_ast_mapper.Ast.JSX.SpreadChild.t ->
      ('a, 'a) Flow_ast_mapper.Ast.JSX.SpreadChild.t
    method label_identifier :
      ('a, 'a) Flow_ast.Identifier.t -> ('a, 'a) Flow_ast.Identifier.t
    method labeled_statement :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Labeled.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Labeled.t
    method literal :
      'a ->
      'a Flow_ast_mapper.Ast.Literal.t -> 'a Flow_ast_mapper.Ast.Literal.t
    method logical :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Logical.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Logical.t
    method member :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Member.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Member.t
    method member_private_name :
      'a Flow_ast.PrivateName.t -> 'a Flow_ast.PrivateName.t
    method member_property :
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Member.property ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Member.property
    method member_property_expression :
      ('a, 'a) Flow_ast.Expression.t -> ('a, 'a) Flow_ast.Expression.t
    method member_property_identifier :
      ('a, 'a) Flow_ast.Identifier.t -> ('a, 'a) Flow_ast.Identifier.t
    method meta_property :
      'a ->
      'a Flow_ast_mapper.Ast.Expression.MetaProperty.t ->
      'a Flow_ast_mapper.Ast.Expression.MetaProperty.t
    method new_ :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.New.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.New.t
    method nullable_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Nullable.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Nullable.t
    method number_literal_type :
      'a ->
      'a Flow_ast_mapper.Ast.NumberLiteral.t ->
      'a Flow_ast_mapper.Ast.NumberLiteral.t
    method object_ :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Object.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Object.t
    method object_call_property_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.CallProperty.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.CallProperty.t
    method object_indexer_property_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.Indexer.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.Indexer.t
    method object_internal_slot_property_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.InternalSlot.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.InternalSlot.t
    method object_key :
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Object.Property.key ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Object.Property.key
    method object_key_computed :
      ('a, 'a) Flow_ast.ComputedKey.t -> ('a, 'a) Flow_ast.ComputedKey.t
    method object_key_identifier :
      ('a, 'a) Flow_ast.Identifier.t -> ('a, 'a) Flow_ast.Identifier.t
    method object_key_literal :
      'a * 'a Flow_ast_mapper.Ast.Literal.t ->
      'a * 'a Flow_ast_mapper.Ast.Literal.t
    method object_property :
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Object.Property.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Object.Property.t
    method object_property_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.Property.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.Property.t
    method object_property_value_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.Property.value ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.Property.value
    method object_spread_property_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.SpreadProperty.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.SpreadProperty.t
    method object_type :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Object.t
    method object_type_property_getter :
      'a * ('a, 'a) Flow_ast_mapper.Ast.Type.Function.t ->
      'a * ('a, 'a) Flow_ast_mapper.Ast.Type.Function.t
    method object_type_property_setter :
      'a * ('a, 'a) Flow_ast_mapper.Ast.Type.Function.t ->
      'a * ('a, 'a) Flow_ast_mapper.Ast.Type.Function.t
    method opaque_type :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.OpaqueType.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.OpaqueType.t
    method optional_call :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.OptionalCall.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.OptionalCall.t
    method optional_indexed_access :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.OptionalIndexedAccess.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.OptionalIndexedAccess.t
    method optional_member :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.OptionalMember.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.OptionalMember.t
    method pattern :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method pattern_array_e :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.Array.element ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.Array.element
    method pattern_array_element :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.Array.Element.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.Array.Element.t
    method pattern_array_element_pattern :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method pattern_array_rest_element :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast.Pattern.RestElement.t ->
      ('a, 'a) Flow_ast.Pattern.RestElement.t
    method pattern_array_rest_element_pattern :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method pattern_assignment_pattern :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method pattern_expression :
      ('a, 'a) Flow_ast.Expression.t -> ('a, 'a) Flow_ast.Expression.t
    method pattern_identifier :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Identifier.t ->
      ('a, 'a) Flow_ast.Identifier.t
    method pattern_literal :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      'a ->
      'a Flow_ast_mapper.Ast.Literal.t -> 'a Flow_ast_mapper.Ast.Literal.t
    method pattern_object_p :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.Object.property ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.Object.property
    method pattern_object_property :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.Object.Property.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.Object.Property.t
    method pattern_object_property_computed_key :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast.ComputedKey.t -> ('a, 'a) Flow_ast.ComputedKey.t
    method pattern_object_property_identifier_key :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast.Identifier.t -> ('a, 'a) Flow_ast.Identifier.t
    method pattern_object_property_key :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.Object.Property.key ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.Object.Property.key
    method pattern_object_property_literal_key :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      'a * 'a Flow_ast_mapper.Ast.Literal.t ->
      'a * 'a Flow_ast_mapper.Ast.Literal.t
    method pattern_object_property_pattern :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method pattern_object_rest_property :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast.Pattern.RestElement.t ->
      ('a, 'a) Flow_ast.Pattern.RestElement.t
    method pattern_object_rest_property_pattern :
      ?kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method predicate :
      ('a, 'a) Flow_ast.Type.Predicate.t ->
      ('a, 'a) Flow_ast.Type.Predicate.t
    method predicate_expression :
      ('a, 'a) Flow_ast.Expression.t -> ('a, 'a) Flow_ast.Expression.t
    method private_name :
      'a Flow_ast.PrivateName.t -> 'a Flow_ast.PrivateName.t
    method program :
      ('a, 'a) Flow_ast_mapper.Ast.Program.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Program.t
    method return :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Return.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Return.t
    method sequence :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Sequence.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Sequence.t
    method spread_element :
      ('a, 'a) Flow_ast.Expression.SpreadElement.t ->
      ('a, 'a) Flow_ast.Expression.SpreadElement.t
    method spread_property :
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Object.SpreadProperty.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Object.SpreadProperty.t
    method statement :
      ('a, 'a) Flow_ast_mapper.Ast.Statement.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.t
    method statement_fork_point :
      ('a, 'a) Flow_ast_mapper.Ast.Statement.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.t list
    method statement_list :
      ('a, 'a) Flow_ast.Statement.t list ->
      ('a, 'a) Flow_ast.Statement.t list
    method string_literal_type :
      'a ->
      'a Flow_ast_mapper.Ast.StringLiteral.t ->
      'a Flow_ast_mapper.Ast.StringLiteral.t
    method super_expression :
      'a ->
      'a Flow_ast_mapper.Ast.Expression.Super.t ->
      'a Flow_ast_mapper.Ast.Expression.Super.t
    method switch :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Switch.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Switch.t
    method switch_case :
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Switch.Case.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Switch.Case.t
    method syntax :
      ('a, 'internal) Flow_ast_mapper.Ast.Syntax.t ->
      ('a, 'internal) Flow_ast_mapper.Ast.Syntax.t
    method syntax_opt :
      ('a, 'internal) Flow_ast_mapper.Ast.Syntax.t option ->
      ('a, 'internal) Flow_ast_mapper.Ast.Syntax.t option
    method tagged_template :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.TaggedTemplate.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.TaggedTemplate.t
    method template_literal :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.TemplateLiteral.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.TemplateLiteral.t
    method template_literal_element :
      'a Flow_ast_mapper.Ast.Expression.TemplateLiteral.Element.t ->
      'a Flow_ast_mapper.Ast.Expression.TemplateLiteral.Element.t
    method this_expression :
      'a ->
      'a Flow_ast_mapper.Ast.Expression.This.t ->
      'a Flow_ast_mapper.Ast.Expression.This.t
    method throw :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Throw.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Throw.t
    method toplevel_statement_list :
      ('a, 'a) Flow_ast.Statement.t list ->
      ('a, 'a) Flow_ast.Statement.t list
    method try_catch :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Try.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.Try.t
    method tuple_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Tuple.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Tuple.t
    method type_ : ('a, 'a) Flow_ast.Type.t -> ('a, 'a) Flow_ast.Type.t
    method type_alias :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.TypeAlias.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.TypeAlias.t
    method type_annotation :
      ('a, 'a) Flow_ast.Type.annotation -> ('a, 'a) Flow_ast.Type.annotation
    method type_annotation_hint :
      ('a, 'a) Flow_ast_mapper.Ast.Type.annotation_or_hint ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.annotation_or_hint
    method type_args :
      ('a, 'a) Flow_ast.Type.TypeArgs.t -> ('a, 'a) Flow_ast.Type.TypeArgs.t
    method type_cast :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.TypeCast.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.TypeCast.t
    method type_identifier :
      ('a, 'a) Flow_ast.Identifier.t -> ('a, 'a) Flow_ast.Identifier.t
    method type_param :
      ('a, 'a) Flow_ast.Type.TypeParam.t ->
      ('a, 'a) Flow_ast.Type.TypeParam.t
    method type_params :
      ('a, 'a) Flow_ast.Type.TypeParams.t ->
      ('a, 'a) Flow_ast.Type.TypeParams.t
    method typeof_type :
      ('a, 'a) Flow_ast_mapper.Ast.Type.Typeof.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Typeof.t
    method unary_expression :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Unary.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Unary.t
    method union_type :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Union.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Type.Union.t
    method update_expression :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Update.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Update.t
    method variable_declaration :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.VariableDeclaration.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.VariableDeclaration.t
    method variable_declarator :
      kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.VariableDeclaration.Declarator.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.VariableDeclaration.Declarator.t
    method variable_declarator_pattern :
      kind:Flow_ast_mapper.Ast.Statement.VariableDeclaration.kind ->
      ('a, 'a) Flow_ast_mapper.Ast.Pattern.t -> ('a, 'a) Flow_ast.Pattern.t
    method variance :
      'a Flow_ast_mapper.Ast.Variance.t -> 'a Flow_ast_mapper.Ast.Variance.t
    method variance_opt :
      'a Flow_ast.Variance.t option -> 'a Flow_ast.Variance.t option
    method visit_leading_comment : 'a Flow_ast.Comment.t -> unit
    method visit_trailing_comment : 'a Flow_ast.Comment.t -> unit
    method while_ :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.While.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.While.t
    method with_ :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.With.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Statement.With.t
    method yield :
      'a ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Yield.t ->
      ('a, 'a) Flow_ast_mapper.Ast.Expression.Yield.t
  end
val comment_bounds :
  Loc.t ->
  'a ->
  (Loc.t comment_bounds_collector -> 'a -> 'b) ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Flow_ast.Comment.t') option
val expand_loc_with_comment_bounds :
  Loc.t -> (Loc.t * 'a) option * (Loc.t * 'b) option -> Loc.t
val comment_bounds_without_trailing_line_comment :
  'a * ('b * Ast.Comment.t') option -> 'a * ('b * Ast.Comment.t') option
val collect_without_trailing_line_comment :
  < comment_bounds : 'a * ('b * Ast.Comment.t') option; .. > ->
  'a * ('b * Ast.Comment.t') option
val statement_comment_bounds :
  (Loc.t, Loc.t) Flow_ast.Statement.t ->
  Loc.t Flow_ast.Comment.t option * Loc.t Flow_ast.Comment.t option
val expression_comment_bounds :
  Loc.t * (Loc.t, Loc.t) Flow_ast_mapper.Ast.Expression.t' ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Flow_ast.Comment.t') option
val type_comment_bounds :
  Loc.t * (Loc.t, Loc.t) Flow_ast.Type.t' ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Flow_ast.Comment.t') option
val block_comment_bounds :
  Loc.t * (Loc.t, Loc.t) Flow_ast_mapper.Ast.Statement.Block.t ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Flow_ast.Comment.t') option
val object_property_comment_bounds :
  (Loc.t, Loc.t) Ast.Expression.Object.property ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Ast.Comment.t') option
val object_type_property_comment_bounds :
  (Loc.t, Loc.t) Ast.Type.Object.property ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Ast.Comment.t') option
val object_pattern_property_comment_bounds :
  Loc.t ->
  (Loc.t, Loc.t) Flow_ast_mapper.Ast.Pattern.Object.property ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Ast.Comment.t') option
val switch_case_comment_bounds :
  Loc.t * (Loc.t, Loc.t) Flow_ast_mapper.Ast.Statement.Switch.Case.t' ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Flow_ast.Comment.t') option
val function_param_comment_bounds :
  Loc.t * (Loc.t, Loc.t) Flow_ast.Function.Param.t' ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Ast.Comment.t') option
val function_rest_param_comment_bounds :
  Loc.t * (Loc.t, Loc.t) Flow_ast.Function.RestParam.t' ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Ast.Comment.t') option
val function_this_param_comment_bounds :
  Loc.t * (Loc.t, Loc.t) Flow_ast.Function.ThisParam.t' ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Ast.Comment.t') option
val function_type_param_comment_bounds :
  Loc.t * (Loc.t, Loc.t) Flow_ast_mapper.Ast.Type.Function.Param.t' ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Ast.Comment.t') option
val function_type_rest_param_comment_bounds :
  Loc.t * (Loc.t, Loc.t) Flow_ast_mapper.Ast.Type.Function.RestParam.t' ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Ast.Comment.t') option
val function_type_this_param_comment_bounds :
  Loc.t * (Loc.t, Loc.t) Flow_ast_mapper.Ast.Type.Function.ThisParam.t' ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Ast.Comment.t') option
val array_element_comment_bounds :
  Loc.t ->
  (Loc.t, Loc.t) Flow_ast_mapper.Ast.Expression.Array.element ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Ast.Comment.t') option
val array_pattern_element_comment_bounds :
  Loc.t ->
  (Loc.t, Loc.t) Flow_ast_mapper.Ast.Pattern.Array.element ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Ast.Comment.t') option
val expression_or_spread_comment_bounds :
  Loc.t ->
  (Loc.t, Loc.t) Flow_ast_mapper.Ast.Expression.expression_or_spread ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Ast.Comment.t') option
val call_type_arg_comment_bounds :
  Loc.t ->
  (Loc.t, Loc.t) Flow_ast_mapper.Ast.Expression.CallTypeArg.t ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Ast.Comment.t') option
val type_param_comment_bounds :
  Loc.t * (Loc.t, Loc.t) Flow_ast.Type.TypeParam.t' ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Ast.Comment.t') option
val function_body_comment_bounds :
  (Loc.t, Loc.t) Ast.Function.body ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Flow_ast.Comment.t') option
val if_alternate_statement_comment_bounds :
  Loc.t ->
  (Loc.t, Loc.t) Flow_ast_mapper.Ast.Statement.If.Alternate.t' ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Flow_ast.Comment.t') option
val member_property_comment_bounds :
  Loc.t ->
  (Loc.t, Loc.t) Flow_ast_mapper.Ast.Expression.Member.property ->
  (Loc.t * Flow_ast.Comment.t') option * (Loc.t * Flow_ast.Comment.t') option
