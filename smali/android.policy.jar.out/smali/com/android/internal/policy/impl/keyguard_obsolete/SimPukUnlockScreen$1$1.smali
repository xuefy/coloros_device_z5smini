.class Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1$1;
.super Ljava/lang/Object;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;->onSimLockChangedResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1$1;->val$success:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 266
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1$1;->val$success:Z

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->access$200(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 276
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1040080

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 273
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->access$600(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method