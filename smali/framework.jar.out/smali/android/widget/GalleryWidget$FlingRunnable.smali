.class Landroid/widget/GalleryWidget$FlingRunnable;
.super Ljava/lang/Object;
.source "GalleryWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GalleryWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Landroid/widget/GalleryWidget;


# direct methods
.method public constructor <init>(Landroid/widget/GalleryWidget;)V
    .locals 2
    .parameter

    .prologue
    .line 1484
    iput-object p1, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1485
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/GalleryWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/GalleryWidget$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1486
    return-void
.end method

.method static synthetic access$100(Landroid/widget/GalleryWidget$FlingRunnable;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1472
    invoke-direct {p0, p1}, Landroid/widget/GalleryWidget$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/GalleryWidget$FlingRunnable;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1472
    iget-object v0, p0, Landroid/widget/GalleryWidget$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private endFling(Z)V
    .locals 2
    .parameter "scrollIntoSlots"

    .prologue
    .line 1527
    iget-object v0, p0, Landroid/widget/GalleryWidget$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1529
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    #calls: Landroid/widget/GalleryWidget;->scrollIntoSlots()V
    invoke-static {v0}, Landroid/widget/GalleryWidget;->access$500(Landroid/widget/GalleryWidget;)V

    .line 1530
    :cond_0
    return-void
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 1490
    iget-object v0, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    invoke-virtual {v0, p0}, Landroid/widget/GalleryWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1491
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1535
    iget-object v5, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    iget v5, v5, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v5, :cond_0

    .line 1536
    invoke-direct {p0, v8}, Landroid/widget/GalleryWidget$FlingRunnable;->endFling(Z)V

    .line 1577
    :goto_0
    return-void

    .line 1540
    :cond_0
    iget-object v5, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    const/4 v6, 0x0

    #setter for: Landroid/widget/GalleryWidget;->mShouldStopFling:Z
    invoke-static {v5, v6}, Landroid/widget/GalleryWidget;->access$602(Landroid/widget/GalleryWidget;Z)Z

    .line 1542
    iget-object v3, p0, Landroid/widget/GalleryWidget$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1543
    .local v3, scroller:Landroid/widget/Scroller;
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 1545
    .local v1, more:Z
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 1549
    .local v4, y:I
    iget v5, p0, Landroid/widget/GalleryWidget$FlingRunnable;->mLastFlingY:I

    sub-int v0, v5, v4

    .line 1552
    .local v0, delta:I
    if-lez v0, :cond_2

    .line 1554
    iget-object v6, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    iget-object v5, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    #getter for: Landroid/widget/GalleryWidget;->mIsRtl:Z
    invoke-static {v5}, Landroid/widget/GalleryWidget;->access$800(Landroid/widget/GalleryWidget;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    iget v5, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-object v7, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    invoke-virtual {v7}, Landroid/widget/GalleryWidget;->getChildCount()I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    :goto_1
    #setter for: Landroid/widget/GalleryWidget;->mDownTouchPosition:I
    invoke-static {v6, v5}, Landroid/widget/GalleryWidget;->access$702(Landroid/widget/GalleryWidget;I)I

    .line 1558
    iget-object v5, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    invoke-virtual {v5}, Landroid/widget/GalleryWidget;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    #getter for: Landroid/view/View;->mPaddingTop:I
    invoke-static {v6}, Landroid/widget/GalleryWidget;->access$900(Landroid/widget/GalleryWidget;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    #getter for: Landroid/view/View;->mPaddingBottom:I
    invoke-static {v6}, Landroid/widget/GalleryWidget;->access$1000(Landroid/widget/GalleryWidget;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1569
    :goto_2
    iget-object v5, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    invoke-virtual {v5, v0}, Landroid/widget/GalleryWidget;->trackMotionScroll(I)V

    .line 1571
    if-eqz v1, :cond_4

    iget-object v5, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    #getter for: Landroid/widget/GalleryWidget;->mShouldStopFling:Z
    invoke-static {v5}, Landroid/widget/GalleryWidget;->access$600(Landroid/widget/GalleryWidget;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1572
    iput v4, p0, Landroid/widget/GalleryWidget$FlingRunnable;->mLastFlingY:I

    .line 1573
    iget-object v5, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    invoke-virtual {v5, p0}, Landroid/widget/GalleryWidget;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1554
    :cond_1
    iget-object v5, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    iget v5, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_1

    .line 1561
    :cond_2
    iget-object v5, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    invoke-virtual {v5}, Landroid/widget/GalleryWidget;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 1562
    .local v2, offsetToLast:I
    iget-object v6, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    iget-object v5, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    #getter for: Landroid/widget/GalleryWidget;->mIsRtl:Z
    invoke-static {v5}, Landroid/widget/GalleryWidget;->access$800(Landroid/widget/GalleryWidget;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    iget v5, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    :goto_3
    #setter for: Landroid/widget/GalleryWidget;->mDownTouchPosition:I
    invoke-static {v6, v5}, Landroid/widget/GalleryWidget;->access$702(Landroid/widget/GalleryWidget;I)I

    .line 1566
    iget-object v5, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    invoke-virtual {v5}, Landroid/widget/GalleryWidget;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    #getter for: Landroid/view/View;->mPaddingTop:I
    invoke-static {v6}, Landroid/widget/GalleryWidget;->access$1100(Landroid/widget/GalleryWidget;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    #getter for: Landroid/view/View;->mPaddingBottom:I
    invoke-static {v6}, Landroid/widget/GalleryWidget;->access$1200(Landroid/widget/GalleryWidget;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 1562
    :cond_3
    iget-object v5, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    iget v5, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-object v7, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    invoke-virtual {v7}, Landroid/widget/GalleryWidget;->getChildCount()I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 1575
    .end local v2           #offsetToLast:I
    :cond_4
    invoke-direct {p0, v8}, Landroid/widget/GalleryWidget$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0
.end method

.method public startUsingDistance(I)V
    .locals 6
    .parameter "distance"

    .prologue
    const/4 v1, 0x0

    .line 1507
    if-nez p1, :cond_0

    .line 1515
    :goto_0
    return-void

    .line 1509
    :cond_0
    invoke-direct {p0}, Landroid/widget/GalleryWidget$FlingRunnable;->startCommon()V

    .line 1512
    iput v1, p0, Landroid/widget/GalleryWidget$FlingRunnable;->mLastFlingY:I

    .line 1513
    iget-object v0, p0, Landroid/widget/GalleryWidget$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v4, p1

    iget-object v2, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    #getter for: Landroid/widget/GalleryWidget;->mAnimationDuration:I
    invoke-static {v2}, Landroid/widget/GalleryWidget;->access$400(Landroid/widget/GalleryWidget;)I

    move-result v5

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1514
    iget-object v0, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    invoke-virtual {v0, p0}, Landroid/widget/GalleryWidget;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingVelocity(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 1494
    if-nez p1, :cond_0

    .line 1504
    :goto_0
    return-void

    .line 1496
    :cond_0
    invoke-direct {p0}, Landroid/widget/GalleryWidget$FlingRunnable;->startCommon()V

    .line 1498
    if-gez p1, :cond_1

    move v2, v6

    .line 1500
    .local v2, initialY:I
    :goto_1
    iput v2, p0, Landroid/widget/GalleryWidget$FlingRunnable;->mLastFlingY:I

    .line 1501
    iget-object v0, p0, Landroid/widget/GalleryWidget$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1503
    iget-object v0, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    invoke-virtual {v0, p0}, Landroid/widget/GalleryWidget;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v2           #initialY:I
    :cond_1
    move v2, v1

    .line 1498
    goto :goto_1
.end method

.method public stop(Z)V
    .locals 1
    .parameter "scrollIntoSlots"

    .prologue
    .line 1518
    iget-object v0, p0, Landroid/widget/GalleryWidget$FlingRunnable;->this$0:Landroid/widget/GalleryWidget;

    invoke-virtual {v0, p0}, Landroid/widget/GalleryWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1519
    invoke-direct {p0, p1}, Landroid/widget/GalleryWidget$FlingRunnable;->endFling(Z)V

    .line 1520
    return-void
.end method
