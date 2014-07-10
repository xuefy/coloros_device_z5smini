.class public Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;
.super Ljava/lang/Object;
.source "HanyuPinyinCaseType.java"


# static fields
.field public static final LOWERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

.field public static final UPPERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;


# instance fields
.field protected name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    const-string v1, "UPPERCASE"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->UPPERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    .line 58
    new-instance v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    const-string v1, "LOWERCASE"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->LOWERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p0, p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->setName(Ljava/lang/String;)V

    .line 83
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 74
    iput-object p1, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->name:Ljava/lang/String;

    .line 75
    return-void
.end method
