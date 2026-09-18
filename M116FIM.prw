#Include "Protheus.ch"

User Function M116FIM()
    Local aArea   := GetArea()
    Local lRet    := .T.
    Local cProd   := ""
    Local cLote   := ""
    Local dValida := CToD("")
    Local i       := 0

    // Percorre os itens do documento de entrada (tabela SD1)
    For i := 1 to Len(aCols)
        // Obtém os dados do item atual na tela
        cProd   := aCols[i][nPosProduto] // Código do produto (exemplo conceitual)
        cLote   := aCols[i][nPosLote]    // Campo de lote D1_LOTECTL
        dValida := aCols[i][nPosValida]  // Campo de validade D1_DTVALID

        // Aqui faríamos a verificação se o produto pertence a hortifrúti/açougue (ex: consultando SB1 ou grupo)
        // Se for perecível e o lote ou a validade estiverem vazios, bloqueamos:
        // lRet := .F.
        // MsgStop("Produto perecível sem lote ou validade informados!", "Atenção")
        // Exit
    Next i

    RestArea(aArea)
Return lRet
