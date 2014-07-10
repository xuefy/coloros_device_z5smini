.class Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;
.super Landroid/os/AsyncTask;
.source "PresetPackagesInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PresetPackagesInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private mObserver:Landroid/content/pm/IPackageInstallObserver;

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/pm/PresetPackagesInstaller;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PresetPackagesInstaller;Landroid/net/Uri;ILandroid/content/pm/IPackageInstallObserver;)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "flags"
    .parameter "observer"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 198
    iput-object p2, p0, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;->mUri:Landroid/net/Uri;

    .line 199
    iput p3, p0, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;->mFlags:I

    .line 200
    iput-object p4, p0, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;->mObserver:Landroid/content/pm/IPackageInstallObserver;

    .line 201
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PresetPackagesInstaller;Landroid/net/Uri;ILandroid/content/pm/IPackageInstallObserver;Lcom/android/server/pm/PresetPackagesInstaller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 192
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;-><init>(Lcom/android/server/pm/PresetPackagesInstaller;Landroid/net/Uri;ILandroid/content/pm/IPackageInstallObserver;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 205
    const-string v0, "PresetAppInstaller"

    const-string v1, "InstallTask doInBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    #getter for: Lcom/android/server/pm/PresetPackagesInstaller;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v0}, Lcom/android/server/pm/PresetPackagesInstaller;->access$600(Lcom/android/server/pm/PresetPackagesInstaller;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;->mObserver:Landroid/content/pm/IPackageInstallObserver;

    iget v3, p0, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;->mFlags:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)V

    .line 207
    const/4 v0, 0x0

    return-object v0
.end method
