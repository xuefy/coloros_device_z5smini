.class Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$3;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
.source "KeyguardSelectorView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    return-object v0
.end method
