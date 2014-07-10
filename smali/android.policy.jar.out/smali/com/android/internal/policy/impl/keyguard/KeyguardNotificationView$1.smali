.class Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView$1;
.super Ljava/lang/Object;
.source "KeyguardNotificationView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 75
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->launchNotification(I)V
    invoke-static {v0, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;I)V

    .line 80
    const/4 v0, 0x1

    return v0
.end method
