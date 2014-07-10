.class public Landroid/content/res/NubiaClassFactory;
.super Ljava/lang/Object;
.source "NubiaClassFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Landroid/content/res/NubiaResources;

    invoke-direct {v0}, Landroid/content/res/NubiaResources;-><init>()V

    return-object v0
.end method

.method public static newResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    .line 17
    new-instance v0, Landroid/content/res/NubiaResources;

    invoke-direct {v0, p0, p1, p2}, Landroid/content/res/NubiaResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public static newResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"
    .parameter "compInfo"

    .prologue
    .line 22
    new-instance v0, Landroid/content/res/NubiaResources;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/NubiaResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    return-object v0
.end method

.method static newTypedArray(Landroid/content/res/Resources;[I[II)Landroid/content/res/TypedArray;
    .locals 1
    .parameter "resources"
    .parameter "data"
    .parameter "indices"
    .parameter "len"

    .prologue
    .line 26
    new-instance v0, Landroid/content/res/NubiaTypedArray;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/NubiaTypedArray;-><init>(Landroid/content/res/Resources;[I[II)V

    return-object v0
.end method
