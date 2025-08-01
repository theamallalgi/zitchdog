local M = {}

function M.create(palette, zitch_pattern, config)
  return {
    -- CSS
    cssTagName = zitch_pattern.Purple,
    cssSelectorOp = zitch_pattern.Purple,
    cssSelectorOp2 = zitch_pattern.Purple,
    cssClassName = zitch_pattern.Blue,
    cssClassNameDot = zitch_pattern.Blue,
    cssIdentifier = zitch_pattern.Green,
    cssUnitDecorators = zitch_pattern.Purple,
    cssColor = zitch_pattern.Purple,
    cssImportant = zitch_pattern.Purple,
    cssFunction = zitch_pattern.Orange,
    cssProp = zitch_pattern.Pink,
    cssAttr = zitch_pattern.Foreground,
    cssPseudoClassId = zitch_pattern.Pink,
    cssNoise = zitch_pattern.Pink,
    cssCustomProp = zitch_pattern.Foreground,
    cssMediaType = zitch_pattern.Purple,

    -- HTML
    htmlTag = zitch_pattern.Foreground,
    htmlEndTag = zitch_pattern.Foreground,
    htmlTagName = zitch_pattern.Purple,
    htmlArg = zitch_pattern.Pink,
    htmlScriptTag = zitch_pattern.Purple,
    htmlTagN = zitch_pattern.Purple,
    htmlSpecialTagName = zitch_pattern.Purple,
    htmlTitle = zitch_pattern.Foreground,
    htmlH1 = zitch_pattern.Foreground,
    htmlSpecialChar = zitch_pattern.Green,
    htmlLink = zitch_pattern.ForegroundUnderline,
    htmlBold = zitch_pattern.ForegroundBold,
    htmlBoldUnderline = { fg = palette.white, gui = "bold,underline" },
    htmlBoldItalic = { fg = palette.white, gui = "bold,italic" },
    htmlBoldUnderlineItalic = { fg = palette.white, gui = "bold,italic" },
    htmlItalic = { fg = palette.white, gui = "italic" },

    -- JAVASCRIPT
    javaScriptMember = zitch_pattern.Foreground,
    javaScriptOperator = zitch_pattern.Purple,
    javaScriptType = zitch_pattern.Blue,
    javaScriptParens = zitch_pattern.Orange,
    javaScriptBraces = zitch_pattern.Orange,
    javaScriptIdentifier = zitch_pattern.Purple,
    javaScriptNull = zitch_pattern.Purple,
    javaScriptReserved = zitch_pattern.Purple,
    javaScriptRepeat = zitch_pattern.Purple,
    javaScriptConditional = zitch_pattern.Purple,
    javaScriptException = zitch_pattern.Purple,
    javaScriptStatement = zitch_pattern.Purple,
    javaScriptStringD = zitch_pattern.Green,
    javaScriptStringT = zitch_pattern.Green,
    javaScriptGlobal = zitch_pattern.Foreground,
    javaScriptLabel = zitch_pattern.Purple,
    javaScriptBranch = zitch_pattern.Purple,
    javaScriptFunction = zitch_pattern.Orange,
    javaScriptBoolean = zitch_pattern.Purple,

    -- JAVASCRIPTREACT
    jsxTagName = zitch_pattern.Purple,
    jsxComponentName = zitch_pattern.Orange,
    jsxCloseString = zitch_pattern.Foreground,
    jsxAttrib = zitch_pattern.Pink,
    jsxEqual = zitch_pattern.Purple,

    -- JSON
    jsonKeyword = zitch_pattern.Purple,
    jsonQuote = zitch_pattern.Green,
    jsonBraces = zitch_pattern.Pink,
    jsonString = zitch_pattern.Green,
    jsonNoise = zitch_pattern.Pink,
    jsonBoolean = zitch_pattern.Green,
    jsonNull = zitch_pattern.Green,

    -- MARKDOWN
    markdownItalic = { fg = palette.white, gui = "italic" },
    markdownBold = zitch_pattern.ForegroundBold,
    markdownBoldItalic = { fg = palette.white, gui = "bold,italic" },
    markdownH1 = zitch_pattern.Orange,
    markdownH2 = zitch_pattern.Orange,
    markdownH3 = zitch_pattern.Orange,
    markdownH4 = zitch_pattern.Orange,
    markdownH5 = zitch_pattern.Orange,
    markdownH6 = zitch_pattern.Orange,
    markdownBlockquote = zitch_pattern.Gray,
    markdownListMarker = zitch_pattern.Purple,
    markdownOrderedListMarker = zitch_pattern.Gray,
    markdownRule = zitch_pattern.Gray,
    markdownHeadingRule = zitch_pattern.Gray,
    markdownUrlDelimiter = zitch_pattern.Foreground,
    markdownLinkDelimiter = zitch_pattern.Foreground,
    markdownLinkTextDelimiter = zitch_pattern.Foreground,
    markdownHeadingDelimiter = zitch_pattern.Purple,
    markdownUrl = zitch_pattern.PurpleUnderline,
    markdownUrlTitleDelimiter = zitch_pattern.Foreground,
    markdownLinkText = zitch_pattern.Green,
    markdownIdDeclaration = zitch_pattern.GreenUnderline,
    markdownCode = zitch_pattern.Green,

    -- SASS
    sassVariable = zitch_pattern.Foreground,

    -- TYPESCRIPT
    typescriptDestructureVariable = zitch_pattern.Foreground,
    typescriptAssign = zitch_pattern.Purple,
    typescriptReserved = zitch_pattern.Purple,
    typescriptLabel = zitch_pattern.Pink,
    typescriptDestructureLabel = zitch_pattern.Foreground,
    typescriptObjectDestructure = zitch_pattern.Foreground,
    typescriptTupleLable = zitch_pattern.Foreground,
    typescriptFuncKeyword = zitch_pattern.Purple,
    typescriptIdentifier = zitch_pattern.Orange,
    typescriptBraces = zitch_pattern.Orange,
    typescriptEndColons = zitch_pattern.Foreground,
    typescriptLogicSymbols = zitch_pattern.Orange,
    typescriptDocSeeTag = zitch_pattern.Gray,
    typescriptDocParam = zitch_pattern.Gray,
    typescriptDocTags = zitch_pattern.Gray,
    typescriptParens = zitch_pattern.Orange,
    typescriptOpSymbols = zitch_pattern.Orange,
    typescriptNull = zitch_pattern.Purple,
    typescriptInterpolationDelimiter = zitch_pattern.Purple,
    typescriptArrowFunc = zitch_pattern.Purple,
    typescriptCharacter = zitch_pattern.Orange,
    typescriptUnion = zitch_pattern.Orange,
    typescriptDotNotation = zitch_pattern.Orange,
    typescriptGlobalObjectDot = zitch_pattern.Orange,
    typescriptStatementKeyword = zitch_pattern.Purple,
    typescriptInterfaceName = zitch_pattern.Blue,
    typescriptMember = zitch_pattern.Pink,
    typescriptType = zitch_pattern.Purple,
    typescriptPredefinedType = zitch_pattern.Purple,
    typescriptFuncType = zitch_pattern.Blue,
    typescriptFuncTypeArrow = zitch_pattern.Blue,
    typescriptFuncName = zitch_pattern.Orange,
    typescriptCastKeyword = zitch_pattern.Purple,
    typescriptGlobal = zitch_pattern.Blue,
    typescriptTypeReference = zitch_pattern.Blue,
    typescriptAliasDeclaration = zitch_pattern.Blue,
    typescriptVariable = zitch_pattern.Purple,
    typescriptCall = zitch_pattern.Foreground,
    typescriptModule = zitch_pattern.Purple,
    typescriptEnum = zitch_pattern.Blue,
    typescriptForOperator = zitch_pattern.Purple,
    typescriptBranch = zitch_pattern.Purple,
    typescriptAmbientDeclaration = zitch_pattern.Purple,
    typescriptTypeBracket = zitch_pattern.Pink,
    typescriptFuncComma = zitch_pattern.Pink,
    typescriptDefaultParam = zitch_pattern.Purple,
    typescriptGlobalMethod = zitch_pattern.Orange,
    typescriptNumberStaticProp = zitch_pattern.Foreground,
    typescriptNumberStaticMethod = zitch_pattern.Orange,
    typescriptNumberMethod = zitch_pattern.Orange,
    typescriptStringMethod = zitch_pattern.Orange,
    typescriptArrayMethod = zitch_pattern.Orange,
    typescriptObjectStaticMethod = zitch_pattern.Orange,
    typescriptObjectMethod = zitch_pattern.Orange,
    typescriptSymbolStaticProp = zitch_pattern.Orange,
    typescriptSymbolStaticMethod = zitch_pattern.Orange,
    typescriptFunctionMethod = zitch_pattern.Orange,
    typescriptMathStaticMethod = zitch_pattern.Orange,
    typescriptDateMethod = zitch_pattern.Orange,
    typescriptDateStaticMethod = zitch_pattern.Orange,
    typescriptJSONStaticMethod = zitch_pattern.Orange,
    typescriptRegExpMethod = zitch_pattern.Orange,
    typescriptES6MapMethod = zitch_pattern.Orange,
    typescriptES6MapProp = zitch_pattern.Pink,
    typescriptES6SetProp = zitch_pattern.Pink,
    typescriptES6SetMethod = zitch_pattern.Orange,
    typescriptProxyAPI = zitch_pattern.Orange,
    typescriptPromiseStaticMethod = zitch_pattern.Orange,
    typescriptPromiseMethod = zitch_pattern.Orange,
    typescriptReflectMethod = zitch_pattern.Orange,
    typescriptIntlMethod = zitch_pattern.Orange,
    typescriptTestGlobal = zitch_pattern.Orange,
    typescriptNodeGlobal = zitch_pattern.Foreground,
    typescriptBOM = zitch_pattern.Blue,
    typescriptBOMWindowProp = zitch_pattern.Foreground,
    typescriptBOMWindowMethod = zitch_pattern.Orange,
    typescriptBOMWindowEvent = zitch_pattern.Orange,
    typescriptBOMNavigatorMethod = zitch_pattern.Orange,
    typescriptServiceWorkerMethod = zitch_pattern.Orange,
    typescriptBOMLocationMethod = zitch_pattern.Orange,
    typescriptBOMNavigatorProp = zitch_pattern.Foreground,
    typescriptBOMLocationProp = zitch_pattern.Foreground,
    typescriptBOMHistoryProp = zitch_pattern.Foreground,
    typescriptBOMHistoryMethod = zitch_pattern.Orange,
    typescriptConsoleMethod = zitch_pattern.Orange,
    typescriptXHRProp = zitch_pattern.Pink,
    typescriptXHRMethod = zitch_pattern.Orange,
    typescriptFileMethod = zitch_pattern.Orange,
    typescriptFileReaderProp = zitch_pattern.Pink,
    typescriptFileReaderMethod = zitch_pattern.Orange,
    typescriptFileListMethod = zitch_pattern.Orange,
    typescriptBlobMethod = zitch_pattern.Orange,
    typescriptURLUtilsProp = zitch_pattern.Pink,
    typescriptURLStaticMethod = zitch_pattern.Orange,
    typescriptSubtleCryptoMethod = zitch_pattern.Orange,
    typescriptCryptoProp = zitch_pattern.Pink,
    typescriptCryptoMethod = zitch_pattern.Orange,
    typescriptHeadersMethod = zitch_pattern.Orange,
    typescriptRequestProp = zitch_pattern.Pink,
    typescriptRequestMethod = zitch_pattern.Orange,
    typescriptResponseProp = zitch_pattern.Pink,
    typescriptResponseMethod = zitch_pattern.Orange,
    typescriptServiceWorkerProp = zitch_pattern.Pink,
    typescriptCacheMethod = zitch_pattern.Orange,
    typescriptEncodingProp = zitch_pattern.Pink,
    typescriptEncodingMethod = zitch_pattern.Orange,
    typescriptGeolocationMethod = zitch_pattern.Orange,
    typescriptBOMNetworkProp = zitch_pattern.Pink,
    typescriptPaymentMethod = zitch_pattern.Orange,
    typescriptPaymentProp = zitch_pattern.Pink,
    typescriptPaymentEvent = zitch_pattern.Orange,
    typescriptPaymentResponseMethod = zitch_pattern.Orange,
    typescriptPaymentResponseProp = zitch_pattern.Pink,
    typescriptPaymentAddressProp = zitch_pattern.Pink,
    typescriptPaymentShippingOptionProp = zitch_pattern.Pink,
    typescriptDOMNodeProp = zitch_pattern.Pink,
    typescriptDOMNodeMethod = zitch_pattern.Orange,
    typescriptDOMNodeType = zitch_pattern.Purple,
    typescriptDOMElemAttrs = zitch_pattern.Pink,
    typescriptDOMElemFuncs = zitch_pattern.Orange,
    typescriptDOMDocProp = zitch_pattern.Pink,
    typescriptDOMDocMethod = zitch_pattern.Orange,
    typescriptDOMEventTargetMethod = zitch_pattern.Orange,
    typescriptDOMEventCons = zitch_pattern.Blue,
    typescriptDOMEventProp = zitch_pattern.Pink,
    typescriptDOMEventMethod = zitch_pattern.Orange,
    typescriptDOMStorage = zitch_pattern.Pink,
    typescriptDOMStorageProp = zitch_pattern.Pink,
    typescriptDOMStorageMethod = zitch_pattern.Orange,
    typescriptDOMFormProp = zitch_pattern.Pink,
    typescriptDOMFormMethod = zitch_pattern.Orange,
    typescriptDOMStyle = zitch_pattern.Pink,
    typescriptUnaryOp = zitch_pattern.Purple,
    typescriptTernary = zitch_pattern.Purple,
    typescriptBinaryOp = zitch_pattern.Purple,
    typescriptMethodAccessor = zitch_pattern.Purple,

    -- TYPESCRIPTREACT
    tsxRegion = zitch_pattern.Foreground,
    tsxAttrib = zitch_pattern.Pink,

    -- YAML
    yamlBlockMappingKey = zitch_pattern.Purple,
    yamlConstant = zitch_pattern.Pink,
    yamlBlockCollectionItemStart = zitch_pattern.Foreground,
    yamlFlowIndicator = zitch_pattern.Orange,
    yamlKeyValueDelimiter = zitch_pattern.Pink,
  }
end

return M