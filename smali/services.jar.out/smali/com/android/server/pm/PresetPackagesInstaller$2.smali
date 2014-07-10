.class Lcom/android/server/pm/PresetPackagesInstaller$2;
.super Ljava/lang/Object;
.source "PresetPackagesInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PresetPackagesInstaller;->hideInstallingMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PresetPackagesInstaller;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PresetPackagesInstaller;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/server/pm/PresetPackagesInstaller$2;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller$2;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v0, v0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller$2;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v0, v0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 149
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller$2;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v0, v0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 150
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller$2;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    .line 152
    :cond_0
    return-void
.end method
