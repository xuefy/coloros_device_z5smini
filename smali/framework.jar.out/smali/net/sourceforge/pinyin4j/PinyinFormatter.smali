.class Lnet/sourceforge/pinyin4j/PinyinFormatter;
.super Ljava/lang/Object;
.source "PinyinFormatter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToneNumber2ToneMark(Ljava/lang/String;)Ljava/lang/String;
    .locals 25
    .parameter "pinyinStr"

    .prologue
    .line 101
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 103
    .local v13, lowerCasePinyinStr:Ljava/lang/String;
    const-string v22, "[a-z]*[1-5]?"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 105
    const/16 v7, 0x24

    .line 106
    .local v7, defautlCharValue:C
    const/4 v8, -0x1

    .line 108
    .local v8, defautlIndexValue:I
    const/16 v20, 0x24

    .line 109
    .local v20, unmarkedVowel:C
    const/4 v12, -0x1

    .line 111
    .local v12, indexOfUnmarkedVowel:I
    const/16 v4, 0x61

    .line 112
    .local v4, charA:C
    const/16 v5, 0x65

    .line 113
    .local v5, charE:C
    const-string/jumbo v16, "ou"

    .line 114
    .local v16, ouStr:Ljava/lang/String;
    const-string v3, "aeiouv"

    .line 115
    .local v3, allUnmarkedVowelStr:Ljava/lang/String;
    const-string/jumbo v2, "\u0101\u00e1\u0103\u00e0a\u0113\u00e9\u0115\u00e8e\u012b\u00ed\u012d\u00eci\u014d\u00f3\u014f\u00f2o\u016b\u00fa\u016d\u00f9u\u01d6\u01d8\u01da\u01dc\u00fc"

    .line 117
    .local v2, allMarkedVowelStr:Ljava/lang/String;
    const-string v22, "[a-z]*[1-5]"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 120
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v19

    .line 122
    .local v19, tuneNumber:I
    const/16 v22, 0x61

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 123
    .local v10, indexOfA:I
    const/16 v22, 0x65

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 124
    .local v11, indexOfE:I
    const-string/jumbo v22, "ou"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 126
    .local v15, ouIndex:I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v0, v10, :cond_2

    .line 128
    move v12, v10

    .line 129
    const/16 v20, 0x61

    .line 152
    :cond_0
    :goto_0
    const/16 v22, 0x24

    move/from16 v0, v22

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v0, v12, :cond_1

    .line 155
    const-string v22, "aeiouv"

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    .line 156
    .local v18, rowIndex:I
    add-int/lit8 v6, v19, -0x1

    .line 158
    .local v6, columnIndex:I
    mul-int/lit8 v22, v18, 0x5

    add-int v21, v22, v6

    .line 160
    .local v21, vowelLocation:I
    const-string/jumbo v22, "\u0101\u00e1\u0103\u00e0a\u0113\u00e9\u0115\u00e8e\u012b\u00ed\u012d\u00eci\u014d\u00f3\u014f\u00f2o\u016b\u00fa\u016d\u00f9u\u01d6\u01d8\u01da\u01dc\u00fc"

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 162
    .local v14, markedVowel:C
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 164
    .local v17, resultBuffer:Ljava/lang/StringBuffer;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "v"

    const-string/jumbo v24, "\u00fc"

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 166
    add-int/lit8 v22, v12, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "v"

    const-string/jumbo v24, "\u00fc"

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 184
    .end local v2           #allMarkedVowelStr:Ljava/lang/String;
    .end local v3           #allUnmarkedVowelStr:Ljava/lang/String;
    .end local v4           #charA:C
    .end local v5           #charE:C
    .end local v6           #columnIndex:I
    .end local v7           #defautlCharValue:C
    .end local v8           #defautlIndexValue:I
    .end local v10           #indexOfA:I
    .end local v11           #indexOfE:I
    .end local v12           #indexOfUnmarkedVowel:I
    .end local v13           #lowerCasePinyinStr:Ljava/lang/String;
    .end local v14           #markedVowel:C
    .end local v15           #ouIndex:I
    .end local v16           #ouStr:Ljava/lang/String;
    .end local v17           #resultBuffer:Ljava/lang/StringBuffer;
    .end local v18           #rowIndex:I
    .end local v19           #tuneNumber:I
    .end local v20           #unmarkedVowel:C
    .end local v21           #vowelLocation:I
    :cond_1
    :goto_1
    return-object v13

    .line 130
    .restart local v2       #allMarkedVowelStr:Ljava/lang/String;
    .restart local v3       #allUnmarkedVowelStr:Ljava/lang/String;
    .restart local v4       #charA:C
    .restart local v5       #charE:C
    .restart local v7       #defautlCharValue:C
    .restart local v8       #defautlIndexValue:I
    .restart local v10       #indexOfA:I
    .restart local v11       #indexOfE:I
    .restart local v12       #indexOfUnmarkedVowel:I
    .restart local v13       #lowerCasePinyinStr:Ljava/lang/String;
    .restart local v15       #ouIndex:I
    .restart local v16       #ouStr:Ljava/lang/String;
    .restart local v19       #tuneNumber:I
    .restart local v20       #unmarkedVowel:C
    :cond_2
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v0, v11, :cond_3

    .line 132
    move v12, v11

    .line 133
    const/16 v20, 0x65

    goto :goto_0

    .line 134
    :cond_3
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v0, v15, :cond_4

    .line 136
    move v12, v15

    .line 137
    const-string/jumbo v22, "ou"

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->charAt(I)C

    move-result v20

    goto/16 :goto_0

    .line 140
    :cond_4
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v9, v22, -0x1

    .local v9, i:I
    :goto_2
    if-ltz v9, :cond_0

    .line 142
    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v22

    const-string v23, "[aeiouv]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 145
    move v12, v9

    .line 146
    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    move-result v20

    .line 147
    goto/16 :goto_0

    .line 140
    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 179
    .end local v9           #i:I
    .end local v10           #indexOfA:I
    .end local v11           #indexOfE:I
    .end local v15           #ouIndex:I
    .end local v19           #tuneNumber:I
    :cond_6
    const-string/jumbo v22, "v"

    const-string/jumbo v23, "\u00fc"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_1
.end method

.method static formatHanyuPinyin(Ljava/lang/String;Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)Ljava/lang/String;
    .locals 2
    .parameter "pinyinStr"
    .parameter "outputFormat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITH_TONE_MARK:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getToneType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_V:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getVCharType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_U_AND_COLON:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getVCharType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 47
    :cond_0
    new-instance v0, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;

    const-string/jumbo v1, "tone marks cannot be added to v or u:"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getToneType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 52
    const-string v0, "[1-5]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 59
    :cond_2
    :goto_0
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_V:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getVCharType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 61
    const-string/jumbo v0, "u:"

    const-string/jumbo v1, "v"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 67
    :cond_3
    :goto_1
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->UPPERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getCaseType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 71
    :cond_4
    return-object p0

    .line 53
    :cond_5
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITH_TONE_MARK:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getToneType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 55
    const-string/jumbo v0, "u:"

    const-string/jumbo v1, "v"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-static {p0}, Lnet/sourceforge/pinyin4j/PinyinFormatter;->convertToneNumber2ToneMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 62
    :cond_6
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_U_UNICODE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getVCharType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 64
    const-string/jumbo v0, "u:"

    const-string/jumbo v1, "\u00fc"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method
