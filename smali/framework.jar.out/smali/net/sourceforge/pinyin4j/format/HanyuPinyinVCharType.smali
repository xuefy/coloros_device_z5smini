.class public Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;
.super Ljava/lang/Object;
.source "HanyuPinyinVCharType.java"


# static fields
.field public static final WITH_U_AND_COLON:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

.field public static final WITH_U_UNICODE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

.field public static final WITH_V:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;


# instance fields
.field protected name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    const-string v1, "WITH_U_AND_COLON"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_U_AND_COLON:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    .line 67
    new-instance v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    const-string v1, "WITH_V"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_V:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    .line 72
    new-instance v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    const-string v1, "WITH_U_UNICODE"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_U_UNICODE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p0, p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->setName(Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 88
    iput-object p1, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->name:Ljava/lang/String;

    .line 89
    return-void
.end method
