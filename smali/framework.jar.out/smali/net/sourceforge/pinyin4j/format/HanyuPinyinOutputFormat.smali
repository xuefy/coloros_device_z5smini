.class public final Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;
.super Ljava/lang/Object;
.source "HanyuPinyinOutputFormat.java"


# instance fields
.field private caseType:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

.field private toneType:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

.field private vCharType:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-virtual {p0}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->restoreDefault()V

    .line 119
    return-void
.end method


# virtual methods
.method public getCaseType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->caseType:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    return-object v0
.end method

.method public getToneType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->toneType:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    return-object v0
.end method

.method public getVCharType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->vCharType:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    return-object v0
.end method

.method public restoreDefault()V
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_U_AND_COLON:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    iput-object v0, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->vCharType:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    .line 134
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->LOWERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    iput-object v0, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->caseType:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    .line 135
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITH_TONE_NUMBER:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    iput-object v0, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->toneType:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    .line 136
    return-void
.end method

.method public setCaseType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;)V
    .locals 0
    .parameter "caseType"

    .prologue
    .line 158
    iput-object p1, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->caseType:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    .line 159
    return-void
.end method

.method public setToneType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;)V
    .locals 0
    .parameter "toneType"

    .prologue
    .line 181
    iput-object p1, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->toneType:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    .line 182
    return-void
.end method

.method public setVCharType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;)V
    .locals 0
    .parameter "charType"

    .prologue
    .line 204
    iput-object p1, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->vCharType:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    .line 205
    return-void
.end method
