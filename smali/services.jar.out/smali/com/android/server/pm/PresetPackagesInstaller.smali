.class public Lcom/android/server/pm/PresetPackagesInstaller;
.super Ljava/lang/Object;
.source "PresetPackagesInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PresetPackagesInstaller$PackageInstallerMonitor;,
        Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInstallTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;",
            ">;"
        }
    .end annotation
.end field

.field private mInstallTotal:I

.field private mInstalledCount:I

.field private mInstallerHelper:Lcom/android/server/pm/InstallerHelper;

.field mInstallerMsgDialog:Landroid/app/ProgressDialog;

.field private mMonitor:Lcom/android/server/pm/PresetPackagesInstaller$PackageInstallerMonitor;

.field private mPackageInstallObserver:Landroid/content/pm/IPackageInstallObserver$Stub;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PresetPackagesInstaller$PackageInstallerMonitor;)V
    .locals 2
    .parameter "context"
    .parameter "service"
    .parameter "monitor"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->DEBUG:Z

    .line 32
    const-string v0, "PresetAppInstaller"

    iput-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    .line 173
    new-instance v0, Lcom/android/server/pm/PresetPackagesInstaller$3;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PresetPackagesInstaller$3;-><init>(Lcom/android/server/pm/PresetPackagesInstaller;)V

    iput-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mPackageInstallObserver:Landroid/content/pm/IPackageInstallObserver$Stub;

    .line 45
    const-string v0, "PresetAppInstaller"

    const-string v1, "PresetPackagesInstaller create"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iput-object p1, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/android/server/pm/InstallerHelper;

    invoke-direct {v0, p1}, Lcom/android/server/pm/InstallerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerHelper:Lcom/android/server/pm/InstallerHelper;

    .line 48
    iput-object p2, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTasks:Ljava/util/List;

    .line 50
    iput-object p3, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mMonitor:Lcom/android/server/pm/PresetPackagesInstaller$PackageInstallerMonitor;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/PresetPackagesInstaller;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/PresetPackagesInstaller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstalledCount:I

    return v0
.end method

.method static synthetic access$208(Lcom/android/server/pm/PresetPackagesInstaller;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstalledCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstalledCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/PresetPackagesInstaller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTotal:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/PresetPackagesInstaller;)Lcom/android/server/pm/PresetPackagesInstaller$PackageInstallerMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mMonitor:Lcom/android/server/pm/PresetPackagesInstaller$PackageInstallerMonitor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/PresetPackagesInstaller;)Lcom/android/server/pm/InstallerHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerHelper:Lcom/android/server/pm/InstallerHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/PresetPackagesInstaller;)Lcom/android/server/pm/PackageManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method private enqueue(Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTotal:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTotal:I

    .line 159
    return-void
.end method

.method private installAll()V
    .locals 4

    .prologue
    .line 162
    iget v2, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTotal:I

    if-gtz v2, :cond_1

    .line 171
    :cond_0
    return-void

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mMonitor:Lcom/android/server/pm/PresetPackagesInstaller$PackageInstallerMonitor;

    if-eqz v2, :cond_2

    .line 166
    iget-object v2, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mMonitor:Lcom/android/server/pm/PresetPackagesInstaller$PackageInstallerMonitor;

    iget v3, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTotal:I

    invoke-interface {v2, v3}, Lcom/android/server/pm/PresetPackagesInstaller$PackageInstallerMonitor;->onPackageInstallStart(I)V

    .line 168
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;

    .line 169
    .local v1, task:Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized excute()V
    .locals 9

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerHelper:Lcom/android/server/pm/InstallerHelper;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallerHelper;->getPresetPackages()Ljava/util/Set;

    move-result-object v8

    .line 56
    .local v8, packages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTotal:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstalledCount:I

    .line 58
    const-string v0, "PresetAppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installPresetPackages start compare:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 60
    .local v7, name:Ljava/lang/String;
    const-string v0, "PresetAppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installAll packageName:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerHelper:Lcom/android/server/pm/InstallerHelper;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/InstallerHelper;->getPackageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 62
    .local v2, uri:Landroid/net/Uri;
    const-string v0, "PresetAppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installAll uri:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    if-eqz v2, :cond_0

    .line 65
    const/4 v3, 0x0

    .line 66
    .local v3, flags:I
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerHelper:Lcom/android/server/pm/InstallerHelper;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/InstallerHelper;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    or-int/lit8 v3, v3, 0x2

    .line 69
    :cond_1
    new-instance v0, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;

    iget-object v4, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mPackageInstallObserver:Landroid/content/pm/IPackageInstallObserver$Stub;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;-><init>(Lcom/android/server/pm/PresetPackagesInstaller;Landroid/net/Uri;ILandroid/content/pm/IPackageInstallObserver;Lcom/android/server/pm/PresetPackagesInstaller$1;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/PresetPackagesInstaller;->enqueue(Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 55
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #flags:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #packages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 71
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v8       #packages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    const-string v0, "PresetAppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installPresetPackages endtime:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0}, Lcom/android/server/pm/PresetPackagesInstaller;->installAll()V

    .line 73
    iget v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTotal:I

    if-nez v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerHelper:Lcom/android/server/pm/InstallerHelper;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallerHelper;->updateDatabase()V

    .line 75
    const-string v0, "PresetAppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installPresetPackages endtime(no install apk):"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public hideInstallingMessages()V
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PresetPackagesInstaller;->showInstallingMessage(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PresetPackagesInstaller$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PresetPackagesInstaller$2;-><init>(Lcom/android/server/pm/PresetPackagesInstaller;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    return-void
.end method

.method public showInstallingMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PresetPackagesInstaller$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/PresetPackagesInstaller$1;-><init>(Lcom/android/server/pm/PresetPackagesInstaller;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void
.end method
