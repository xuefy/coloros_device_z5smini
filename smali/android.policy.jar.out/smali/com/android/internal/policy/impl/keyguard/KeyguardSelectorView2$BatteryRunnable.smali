.class Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;
.super Ljava/lang/Object;
.source "KeyguardSelectorView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryRunnable"
.end annotation


# instance fields
.field private drawId:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;I)V
    .locals 0
    .parameter
    .parameter "index"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;->drawId:I

    .line 290
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 292
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;->drawId:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;->drawId:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;->drawId:I

    if-ne v1, v4, :cond_1

    .line 298
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    const v2, 0x1080321

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->setHandleResources(I)V

    .line 302
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->invalidate()V

    .line 304
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;->drawId:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)I

    move-result v2

    sub-int/2addr v1, v2

    rsub-int/lit8 v0, v1, 0x1

    .line 305
    .local v0, offset:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v4, :cond_2

    .line 306
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;->drawId:I

    .line 311
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    return-void

    .line 300
    .end local v0           #offset:I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)[I

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;->drawId:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->setHandleResources(I)V

    goto :goto_0

    .line 308
    .restart local v0       #offset:I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;->drawId:I

    goto :goto_1
.end method
