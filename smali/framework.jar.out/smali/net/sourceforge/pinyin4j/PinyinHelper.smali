.class public Lnet/sourceforge/pinyin4j/PinyinHelper;
.super Ljava/lang/Object;
.source "PinyinHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PinyinHelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method

.method private static getFormattedHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;
    .locals 3
    .parameter "ch"
    .parameter "outputFormat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->getUnformattedHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, pinyinStrArray:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 124
    aget-object v2, v1, v0

    invoke-static {v2, p1}, Lnet/sourceforge/pinyin4j/PinyinFormatter;->formatHanyuPinyin(Ljava/lang/String;Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    .end local v1           #pinyinStrArray:[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static getUnformattedHanyuPinyinStringArray(C)[Ljava/lang/String;
    .locals 1
    .parameter "ch"

    .prologue
    .line 143
    invoke-static {}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->getInstance()Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->getHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHanyuPinyinStringArray(C)[Ljava/lang/String;
    .locals 1
    .parameter "ch"

    .prologue
    .line 60
    invoke-static {p0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->getUnformattedHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;
    .locals 1
    .parameter "ch"
    .parameter "outputFormat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {p0, p1}, Lnet/sourceforge/pinyin4j/PinyinHelper;->getFormattedHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
