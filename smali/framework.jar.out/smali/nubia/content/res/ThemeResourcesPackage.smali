.class public Lnubia/content/res/ThemeResourcesPackage;
.super Lnubia/content/res/ThemeResources;
.source "ThemeResourcesPackage.java"


# static fields
.field private static final sPackageResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnubia/content/res/ThemeResourcesPackage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lnubia/content/res/ThemeResourcesPackage;Landroid/content/res/Resources;Ljava/lang/String;Lnubia/content/res/ThemeResources$MetaData;)V
    .locals 0
    .parameter "wrappedResources"
    .parameter "resources"
    .parameter "fileName"
    .parameter "metaData"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lnubia/content/res/ThemeResources;-><init>(Lnubia/content/res/ThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Lnubia/content/res/ThemeResources$MetaData;)V

    .line 18
    return-void
.end method

.method public static getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResourcesPackage;
    .locals 5
    .parameter "originalResources"
    .parameter "packageName"

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 30
    .local v1, result:Lnubia/content/res/ThemeResourcesPackage;
    sget-object v2, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    sget-object v2, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Lnubia/content/res/ThemeResourcesPackage;
    check-cast v1, Lnubia/content/res/ThemeResourcesPackage;

    .line 32
    .restart local v1       #result:Lnubia/content/res/ThemeResourcesPackage;
    :cond_0
    if-nez v1, :cond_3

    .line 33
    sget-object v3, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    monitor-enter v3

    .line 35
    :try_start_0
    sget-object v2, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    sget-object v2, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lnubia/content/res/ThemeResourcesPackage;

    move-object v1, v0

    .line 38
    :cond_1
    if-nez v1, :cond_2

    .line 40
    invoke-static {p0, p1}, Lnubia/content/res/ThemeResourcesPackage;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResourcesPackage;

    move-result-object v1

    .line 41
    sget-object v2, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_2
    monitor-exit v3

    .line 46
    :cond_3
    return-object v1

    .line 44
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResourcesPackage;
    .locals 4
    .parameter "originalResources"
    .parameter "fileName"

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, finalThemeResources:Lnubia/content/res/ThemeResourcesPackage;
    const/4 v2, 0x0

    .line 61
    .local v2, i:I
    :goto_0
    sget-object v3, Lnubia/content/res/ThemeResourcesPackage;->THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 62
    new-instance v1, Lnubia/content/res/ThemeResourcesPackage;

    sget-object v3, Lnubia/content/res/ThemeResourcesPackage;->THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData;

    aget-object v3, v3, v2

    invoke-direct {v1, v0, p0, p1, v3}, Lnubia/content/res/ThemeResourcesPackage;-><init>(Lnubia/content/res/ThemeResourcesPackage;Landroid/content/res/Resources;Ljava/lang/String;Lnubia/content/res/ThemeResources$MetaData;)V

    .line 65
    .end local v0           #finalThemeResources:Lnubia/content/res/ThemeResourcesPackage;
    .local v1, finalThemeResources:Lnubia/content/res/ThemeResourcesPackage;
    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    .end local v1           #finalThemeResources:Lnubia/content/res/ThemeResourcesPackage;
    .restart local v0       #finalThemeResources:Lnubia/content/res/ThemeResourcesPackage;
    goto :goto_0

    .line 67
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "id"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lnubia/content/res/ThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 75
    .local v0, charSequence:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lnubia/content/res/ThemeResourcesPackage;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResourcesSystem;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 77
    :cond_0
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 3
    .parameter "cookieType"
    .parameter "fileName"

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, fileInfo:Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "framework-res/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnubia/content/res/ThemeResourcesPackage;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 85
    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Lnubia/content/res/ThemeResourcesPackage;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnubia/content/res/ThemeResourcesSystem;->getThemeFileStream(ILjava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 88
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "framework-nubia-res/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnubia/content/res/ThemeResourcesPackage;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 90
    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Lnubia/content/res/ThemeResourcesPackage;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnubia/content/res/ThemeResourcesSystem;->getThemeFileStream(ILjava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0, p2}, Lnubia/content/res/ThemeResourcesPackage;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 2
    .parameter "id"

    .prologue
    .line 102
    invoke-super {p0, p1}, Lnubia/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 103
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Lnubia/content/res/ThemeResourcesPackage;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResourcesSystem;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 105
    :cond_0
    return-object v0
.end method

.method public hasValues()Z
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lnubia/content/res/ThemeResources;->hasValues()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnubia/content/res/ThemeResourcesPackage;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0}, Lnubia/content/res/ThemeResourcesSystem;->hasValues()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
