.class Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView$2;
.super Landroid/os/Handler;
.source "KeyguardNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    .line 92
    return-void
.end method
