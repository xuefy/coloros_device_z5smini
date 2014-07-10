.class public Landroid/widget/GalleryWidget;
.super Landroid/widget/AbsSpinner;
.source "GalleryWidget.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/GalleryWidget$LayoutParams;,
        Landroid/widget/GalleryWidget$FlingRunnable;
    }
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "Gallery"

.field private static final localLOGV:Z


# instance fields
.field private mAnimationDuration:I

.field private mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Landroid/widget/GalleryWidget$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsRtl:Z

.field private mLeftMost:I

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedCenterOffset:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GalleryWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 200
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GalleryWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 204
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput v7, p0, Landroid/widget/GalleryWidget;->mSpacing:I

    .line 88
    const/16 v5, 0x190

    iput v5, p0, Landroid/widget/GalleryWidget;->mAnimationDuration:I

    .line 125
    new-instance v5, Landroid/widget/GalleryWidget$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/GalleryWidget$FlingRunnable;-><init>(Landroid/widget/GalleryWidget;)V

    iput-object v5, p0, Landroid/widget/GalleryWidget;->mFlingRunnable:Landroid/widget/GalleryWidget$FlingRunnable;

    .line 131
    new-instance v5, Landroid/widget/GalleryWidget$1;

    invoke-direct {v5, p0}, Landroid/widget/GalleryWidget$1;-><init>(Landroid/widget/GalleryWidget;)V

    iput-object v5, p0, Landroid/widget/GalleryWidget;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 156
    iput-boolean v6, p0, Landroid/widget/GalleryWidget;->mShouldCallbackDuringFling:Z

    .line 161
    iput-boolean v6, p0, Landroid/widget/GalleryWidget;->mShouldCallbackOnUnselectedItemClick:Z

    .line 187
    iput-boolean v6, p0, Landroid/widget/GalleryWidget;->mIsRtl:Z

    .line 206
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Landroid/widget/GalleryWidget;->mGestureDetector:Landroid/view/GestureDetector;

    .line 207
    iget-object v5, p0, Landroid/widget/GalleryWidget;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v6}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 209
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 212
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 213
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 214
    invoke-virtual {p0, v2}, Landroid/widget/GalleryWidget;->setGravity(I)V

    .line 217
    :cond_0
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 219
    .local v1, animationDuration:I
    if-lez v1, :cond_1

    .line 220
    invoke-virtual {p0, v1}, Landroid/widget/GalleryWidget;->setAnimationDuration(I)V

    .line 223
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 225
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Landroid/widget/GalleryWidget;->setSpacing(I)V

    .line 227
    const/4 v5, 0x3

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 229
    .local v4, unselectedAlpha:F
    invoke-virtual {p0, v4}, Landroid/widget/GalleryWidget;->setUnselectedAlpha(F)V

    .line 231
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 237
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 238
    return-void
.end method

.method static synthetic access$002(Landroid/widget/GalleryWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Landroid/widget/GalleryWidget;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Landroid/widget/GalleryWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/GalleryWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/GalleryWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/GalleryWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/widget/GalleryWidget;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/GalleryWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Landroid/widget/GalleryWidget;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/GalleryWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/widget/GalleryWidget;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/GalleryWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Landroid/widget/GalleryWidget;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$602(Landroid/widget/GalleryWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Landroid/widget/GalleryWidget;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$702(Landroid/widget/GalleryWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Landroid/widget/GalleryWidget;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$800(Landroid/widget/GalleryWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Landroid/widget/GalleryWidget;->mIsRtl:Z

    return v0
.end method

.method static synthetic access$900(Landroid/widget/GalleryWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method private calculateLeft(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 976
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->getMeasuredWidth()I

    move-result v3

    .line 977
    .local v3, myWidth:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 979
    .local v1, childWidth:I
    :goto_1
    const/4 v2, 0x0

    .line 981
    .local v2, childleft:I
    iget v4, p0, Landroid/widget/GalleryWidget;->mGravity:I

    packed-switch v4, :pswitch_data_0

    .line 994
    :goto_2
    :pswitch_0
    return v2

    .line 976
    .end local v1           #childWidth:I
    .end local v2           #childleft:I
    .end local v3           #myWidth:I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->getWidth()I

    move-result v3

    goto :goto_0

    .line 977
    .restart local v3       #myWidth:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_1

    .line 983
    .restart local v1       #childWidth:I
    .restart local v2       #childleft:I
    :pswitch_1
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->left:I

    .line 984
    goto :goto_2

    .line 986
    :pswitch_2
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v3, v4

    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 988
    .local v0, availableSpace:I
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 989
    goto :goto_2

    .line 991
    .end local v0           #availableSpace:I
    :pswitch_3
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 981
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 954
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->getMeasuredHeight()I

    move-result v3

    .line 955
    .local v3, myHeight:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 957
    .local v1, childHeight:I
    :goto_1
    const/4 v2, 0x0

    .line 959
    .local v2, childTop:I
    iget v4, p0, Landroid/widget/GalleryWidget;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 972
    :goto_2
    return v2

    .line 954
    .end local v1           #childHeight:I
    .end local v2           #childTop:I
    .end local v3           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->getHeight()I

    move-result v3

    goto :goto_0

    .line 955
    .restart local v3       #myHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 961
    .restart local v1       #childHeight:I
    .restart local v2       #childTop:I
    :sswitch_0
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 962
    goto :goto_2

    .line 964
    :sswitch_1
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 966
    .local v0, availableSpace:I
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 967
    goto :goto_2

    .line 969
    .end local v0           #availableSpace:I
    :sswitch_2
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 959
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 11
    .parameter "toLeft"

    .prologue
    .line 493
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->getChildCount()I

    move-result v7

    .line 494
    .local v7, numChildren:I
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 495
    .local v2, firstPosition:I
    const/4 v8, 0x0

    .line 496
    .local v8, start:I
    const/4 v1, 0x0

    .line 498
    .local v1, count:I
    if-eqz p1, :cond_5

    .line 499
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    .line 500
    .local v4, galleryTop:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 501
    iget-boolean v9, p0, Landroid/widget/GalleryWidget;->mIsRtl:Z

    if-eqz v9, :cond_3

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .line 502
    .local v6, n:I
    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/GalleryWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 503
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-lt v9, v4, :cond_4

    .line 511
    .end local v0           #child:Landroid/view/View;
    .end local v6           #n:I
    :cond_0
    iget-boolean v9, p0, Landroid/widget/GalleryWidget;->mIsRtl:Z

    if-nez v9, :cond_1

    .line 512
    const/4 v8, 0x0

    .line 532
    .end local v4           #galleryTop:I
    :cond_1
    :goto_2
    invoke-virtual {p0, v8, v1}, Landroid/widget/GalleryWidget;->detachViewsFromParent(II)V

    .line 534
    iget-boolean v9, p0, Landroid/widget/GalleryWidget;->mIsRtl:Z

    if-eq p1, v9, :cond_2

    .line 535
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v9, v1

    iput v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 537
    :cond_2
    return-void

    .restart local v4       #galleryTop:I
    :cond_3
    move v6, v5

    .line 501
    goto :goto_1

    .line 506
    .restart local v0       #child:Landroid/view/View;
    .restart local v6       #n:I
    :cond_4
    move v8, v6

    .line 507
    add-int/lit8 v1, v1, 0x1

    .line 508
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 500
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 515
    .end local v0           #child:Landroid/view/View;
    .end local v4           #galleryTop:I
    .end local v5           #i:I
    .end local v6           #n:I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->getHeight()I

    move-result v9

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v3, v9, v10

    .line 516
    .local v3, galleryBottom:I
    add-int/lit8 v5, v7, -0x1

    .restart local v5       #i:I
    :goto_3
    if-ltz v5, :cond_6

    .line 517
    iget-boolean v9, p0, Landroid/widget/GalleryWidget;->mIsRtl:Z

    if-eqz v9, :cond_7

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .line 518
    .restart local v6       #n:I
    :goto_4
    invoke-virtual {p0, v6}, Landroid/widget/GalleryWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 519
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-gt v9, v3, :cond_8

    .line 527
    .end local v0           #child:Landroid/view/View;
    .end local v6           #n:I
    :cond_6
    iget-boolean v9, p0, Landroid/widget/GalleryWidget;->mIsRtl:Z

    if-eqz v9, :cond_1

    .line 528
    const/4 v8, 0x0

    goto :goto_2

    :cond_7
    move v6, v5

    .line 517
    goto :goto_4

    .line 522
    .restart local v0       #child:Landroid/view/View;
    .restart local v6       #n:I
    :cond_8
    move v8, v6

    .line 523
    add-int/lit8 v1, v1, 0x1

    .line 524
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 516
    add-int/lit8 v5, v5, -0x1

    goto :goto_3
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1219
    const/4 v6, 0x0

    .line 1221
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Landroid/widget/GalleryWidget;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/GalleryWidget;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1226
    :cond_0
    if-nez v6, :cond_1

    .line 1227
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Landroid/widget/GalleryWidget;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1228
    invoke-super {p0, p0}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1231
    :cond_1
    if-eqz v6, :cond_2

    .line 1232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/GalleryWidget;->performHapticFeedback(I)Z

    .line 1235
    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    const/4 v0, 0x1

    .line 1155
    if-eqz p1, :cond_0

    .line 1156
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1159
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/GalleryWidget;->setPressed(Z)V

    .line 1160
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1164
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1165
    invoke-virtual {p0, v0}, Landroid/widget/GalleryWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1164
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1168
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/GalleryWidget;->setPressed(Z)V

    .line 1169
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Landroid/widget/GalleryWidget;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 705
    invoke-direct {p0}, Landroid/widget/GalleryWidget;->fillToGalleryLeftRtl()V

    .line 709
    :goto_0
    return-void

    .line 707
    :cond_0
    invoke-direct {p0}, Landroid/widget/GalleryWidget;->fillToGalleryLeftLtr()V

    goto :goto_0
.end method

.method private fillToGalleryLeftLtr()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 743
    iget v3, p0, Landroid/widget/GalleryWidget;->mSpacing:I

    .line 744
    .local v3, itemSpacing:I
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    .line 747
    .local v2, galleryTop:I
    invoke-virtual {p0, v7}, Landroid/widget/GalleryWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 751
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 752
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v1, v5, -0x1

    .line 753
    .local v1, curPosition:I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v0, v5, v3

    .line 761
    .local v0, curBottomEdge:I
    :goto_0
    if-le v0, v2, :cond_1

    if-ltz v1, :cond_1

    .line 762
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v7}, Landroid/widget/GalleryWidget;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 767
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 770
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v0, v5, v3

    .line 771
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 756
    .end local v0           #curBottomEdge:I
    .end local v1           #curPosition:I
    :cond_0
    const/4 v1, 0x0

    .line 757
    .restart local v1       #curPosition:I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v0, v5, v6

    .line 758
    .restart local v0       #curBottomEdge:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/GalleryWidget;->mShouldStopFling:Z

    goto :goto_0

    .line 773
    :cond_1
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .locals 9

    .prologue
    .line 712
    iget v3, p0, Landroid/widget/GalleryWidget;->mSpacing:I

    .line 713
    .local v3, itemSpacing:I
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    .line 714
    .local v2, galleryTop:I
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->getChildCount()I

    move-result v4

    .line 715
    .local v4, numChildren:I
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 718
    .local v5, numItems:I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/GalleryWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 722
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 723
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v1, v7, v4

    .line 724
    .local v1, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v0, v7, v3

    .line 732
    .local v0, curBottomEdge:I
    :goto_0
    if-le v0, v2, :cond_1

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v1, v7, :cond_1

    .line 733
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v7, v1, v7

    const/4 v8, 0x0

    invoke-direct {p0, v1, v7, v0, v8}, Landroid/widget/GalleryWidget;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 737
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v0, v7, v3

    .line 738
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 727
    .end local v0           #curBottomEdge:I
    .end local v1           #curPosition:I
    :cond_0
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1       #curPosition:I
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 728
    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v0, v7, v8

    .line 729
    .restart local v0       #curBottomEdge:I
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/GalleryWidget;->mShouldStopFling:Z

    goto :goto_0

    .line 740
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 1

    .prologue
    .line 776
    iget-boolean v0, p0, Landroid/widget/GalleryWidget;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 777
    invoke-direct {p0}, Landroid/widget/GalleryWidget;->fillToGalleryRightRtl()V

    .line 781
    :goto_0
    return-void

    .line 779
    :cond_0
    invoke-direct {p0}, Landroid/widget/GalleryWidget;->fillToGalleryRightLtr()V

    goto :goto_0
.end method

.method private fillToGalleryRightLtr()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 815
    iget v3, p0, Landroid/widget/GalleryWidget;->mSpacing:I

    .line 816
    .local v3, itemSpacing:I
    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v2, v7, v8

    .line 817
    .local v2, galleryBottom:I
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->getChildCount()I

    move-result v4

    .line 818
    .local v4, numChildren:I
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 821
    .local v5, numItems:I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/GalleryWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 825
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 826
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v0, v7, v4

    .line 827
    .local v0, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v1, v7, v3

    .line 834
    .local v1, curTopEdge:I
    :goto_0
    if-ge v1, v2, :cond_1

    if-ge v0, v5, :cond_1

    .line 835
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v7, v0, v7

    invoke-direct {p0, v0, v7, v1, v9}, Landroid/widget/GalleryWidget;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 839
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v1, v7, v3

    .line 840
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 829
    .end local v0           #curPosition:I
    .end local v1           #curTopEdge:I
    :cond_0
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v0, v7, -0x1

    .restart local v0       #curPosition:I
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 830
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    .line 831
    .restart local v1       #curTopEdge:I
    iput-boolean v9, p0, Landroid/widget/GalleryWidget;->mShouldStopFling:Z

    goto :goto_0

    .line 842
    :cond_1
    return-void
.end method

.method private fillToGalleryRightRtl()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 784
    iget v3, p0, Landroid/widget/GalleryWidget;->mSpacing:I

    .line 785
    .local v3, itemSpacing:I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v2, v5, v6

    .line 788
    .local v2, galleryBottom:I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/GalleryWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 792
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 793
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 794
    .local v0, curPosition:I
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int v1, v5, v3

    .line 801
    .local v1, curTopEdge:I
    :goto_0
    if-ge v1, v2, :cond_1

    if-ltz v0, :cond_1

    .line 802
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Landroid/widget/GalleryWidget;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 806
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 809
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int v1, v5, v3

    .line 810
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 796
    .end local v0           #curPosition:I
    .end local v1           #curTopEdge:I
    :cond_0
    const/4 v0, 0x0

    .line 797
    .restart local v0       #curPosition:I
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    .line 798
    .restart local v1       #curTopEdge:I
    iput-boolean v7, p0, Landroid/widget/GalleryWidget;->mShouldStopFling:Z

    goto :goto_0

    .line 812
    :cond_1
    return-void
.end method

.method private getCenterOfGallery()I
    .locals 2

    .prologue
    .line 476
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 483
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "offset"
    .parameter "y"
    .parameter "fromTop"

    .prologue
    .line 862
    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v3, :cond_0

    .line 863
    iget-object v3, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 864
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 869
    .local v2, childLeft:I
    iget v3, p0, Landroid/widget/GalleryWidget;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/GalleryWidget;->mRightMost:I

    .line 871
    iget v3, p0, Landroid/widget/GalleryWidget;->mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/GalleryWidget;->mLeftMost:I

    .line 874
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/GalleryWidget;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 886
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLeft:I
    .local v1, child:Landroid/view/View;
    :goto_0
    return-object v1

    .line 881
    .end local v1           #child:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 884
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/GalleryWidget;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 886
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private offsetChildrenTopAndBottomPri(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 464
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 466
    invoke-virtual {p0, v0}, Landroid/widget/GalleryWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 464
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 469
    :cond_0
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 4

    .prologue
    .line 545
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/GalleryWidget;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v3, p0, Landroid/widget/GalleryWidget;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Landroid/widget/GalleryWidget;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 548
    .local v1, selectedCenter:I
    invoke-direct {p0}, Landroid/widget/GalleryWidget;->getCenterOfGallery()I

    move-result v2

    .line 550
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 551
    .local v0, scrollAmount:I
    if-eqz v0, :cond_2

    .line 552
    iget-object v3, p0, Landroid/widget/GalleryWidget;->mFlingRunnable:Landroid/widget/GalleryWidget$FlingRunnable;

    invoke-virtual {v3, v0}, Landroid/widget/GalleryWidget$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 554
    :cond_2
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->onFinishedMovement()V

    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 4
    .parameter "childPosition"

    .prologue
    .line 1325
    invoke-virtual {p0, p1}, Landroid/widget/GalleryWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1327
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1328
    invoke-direct {p0}, Landroid/widget/GalleryWidget;->getCenterOfGallery()I

    move-result v2

    invoke-static {v0}, Landroid/widget/GalleryWidget;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1329
    .local v1, distance:I
    iget-object v2, p0, Landroid/widget/GalleryWidget;->mFlingRunnable:Landroid/widget/GalleryWidget$FlingRunnable;

    invoke-virtual {v2, v1}, Landroid/widget/GalleryWidget$FlingRunnable;->startUsingDistance(I)V

    .line 1330
    const/4 v2, 0x1

    .line 1333
    .end local v1           #distance:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    .prologue
    .line 585
    iget-object v7, p0, Landroid/widget/GalleryWidget;->mSelectedChild:Landroid/view/View;

    .line 586
    .local v7, selView:Landroid/view/View;
    iget-object v8, p0, Landroid/widget/GalleryWidget;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    invoke-direct {p0}, Landroid/widget/GalleryWidget;->getCenterOfGallery()I

    move-result v3

    .line 591
    .local v3, galleryCenter:I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 596
    :cond_2
    const v2, 0x7fffffff

    .line 597
    .local v2, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 598
    .local v6, newSelectedChildIndex:I
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_3

    .line 600
    invoke-virtual {p0, v4}, Landroid/widget/GalleryWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 602
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 604
    move v6, v4

    .line 616
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v5, v8, v6

    .line 618
    .local v5, newPos:I
    iget v8, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 619
    invoke-virtual {p0, v5}, Landroid/widget/GalleryWidget;->setSelectedPositionInt(I)V

    .line 620
    invoke-virtual {p0, v5}, Landroid/widget/GalleryWidget;->setNextSelectedPositionInt(I)V

    .line 621
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->checkSelectionChanged()V

    goto :goto_0

    .line 608
    .end local v5           #newPos:I
    .restart local v0       #child:Landroid/view/View;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 610
    .local v1, childClosestEdgeDistance:I
    if-ge v1, v2, :cond_5

    .line 611
    move v2, v1

    .line 612
    move v6, v4

    .line 598
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 13
    .parameter "child"
    .parameter "offset"
    .parameter "y"
    .parameter "fromtop"

    .prologue
    .line 905
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/GalleryWidget$LayoutParams;

    .line 906
    .local v9, lp:Landroid/widget/GalleryWidget$LayoutParams;
    if-nez v9, :cond_0

    .line 907
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .end local v9           #lp:Landroid/widget/GalleryWidget$LayoutParams;
    check-cast v9, Landroid/widget/GalleryWidget$LayoutParams;

    .line 910
    .restart local v9       #lp:Landroid/widget/GalleryWidget$LayoutParams;
    :cond_0
    iget-boolean v10, p0, Landroid/widget/GalleryWidget;->mIsRtl:Z

    move/from16 v0, p4

    if-eq v0, v10, :cond_1

    const/4 v10, -0x1

    :goto_0
    invoke-virtual {p0, p1, v10, v9}, Landroid/widget/GalleryWidget;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 912
    if-nez p2, :cond_2

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {p1, v10}, Landroid/view/View;->setSelected(Z)V

    .line 915
    iget v10, p0, Landroid/widget/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v11, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    iget v12, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v10, v11, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    .line 917
    .local v3, childHeightSpec:I
    iget v10, p0, Landroid/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v11, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget-object v12, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    iget v12, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v10, v11, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 921
    .local v7, childWidthSpec:I
    invoke-virtual {p1, v7, v3}, Landroid/view/View;->measure(II)V

    .line 927
    const/4 v10, 0x1

    invoke-direct {p0, p1, v10}, Landroid/widget/GalleryWidget;->calculateLeft(Landroid/view/View;Z)I

    move-result v4

    .line 928
    .local v4, childLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int v5, v4, v10

    .line 930
    .local v5, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 931
    .local v1, Height:I
    if-eqz p4, :cond_3

    .line 932
    move/from16 v6, p3

    .line 933
    .local v6, childTop:I
    add-int v2, p3, v1

    .line 939
    .local v2, childBottom:I
    :goto_2
    const/4 v8, 0x0

    .local v8, debug:I
    :goto_3
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->getChildCount()I

    move-result v10

    if-ge v8, v10, :cond_4

    .line 940
    invoke-virtual {p0, v8}, Landroid/widget/GalleryWidget;->getChildAt(I)Landroid/view/View;

    .line 939
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 910
    .end local v1           #Height:I
    .end local v2           #childBottom:I
    .end local v3           #childHeightSpec:I
    .end local v4           #childLeft:I
    .end local v5           #childRight:I
    .end local v6           #childTop:I
    .end local v7           #childWidthSpec:I
    .end local v8           #debug:I
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 912
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 935
    .restart local v1       #Height:I
    .restart local v3       #childHeightSpec:I
    .restart local v4       #childLeft:I
    .restart local v5       #childRight:I
    .restart local v7       #childWidthSpec:I
    :cond_3
    sub-int v6, p3, v1

    .line 936
    .restart local v6       #childTop:I
    move/from16 v2, p3

    .restart local v2       #childBottom:I
    goto :goto_2

    .line 944
    .restart local v8       #debug:I
    :cond_4
    invoke-virtual {p1, v4, v6, v5, v2}, Landroid/view/View;->layout(IIII)V

    .line 945
    return-void
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1346
    iget-object v1, p0, Landroid/widget/GalleryWidget;->mSelectedChild:Landroid/view/View;

    .line 1348
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/GalleryWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GalleryWidget;->mSelectedChild:Landroid/view/View;

    .line 1350
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1373
    :cond_0
    :goto_0
    return-void

    .line 1354
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1355
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1357
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1358
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1363
    :cond_2
    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    .line 1366
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1370
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 330
    instance-of v0, p1, Landroid/widget/GalleryWidget$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 1241
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1184
    iget-object v0, p0, Landroid/widget/GalleryWidget;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Landroid/widget/GalleryWidget;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1187
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1178
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 348
    new-instance v0, Landroid/widget/GalleryWidget$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/GalleryWidget$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 340
    new-instance v0, Landroid/widget/GalleryWidget$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/GalleryWidget$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 335
    new-instance v0, Landroid/widget/GalleryWidget$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/GalleryWidget$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1391
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1394
    .local v0, selectedIndex:I
    if-gez v0, :cond_1

    .line 1404
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 1396
    .restart local p2
    :cond_1
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_2

    move p2, v0

    .line 1398
    goto :goto_0

    .line 1399
    :cond_2
    if-lt p2, v0, :cond_0

    .line 1401
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 304
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 305
    iget-object v0, p0, Landroid/widget/GalleryWidget;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 307
    const/4 v0, 0x1

    return v0

    .line 305
    :cond_0
    iget v0, p0, Landroid/widget/GalleryWidget;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Landroid/widget/GalleryWidget;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 7
    .parameter "motionToTop"
    .parameter "deltaY"

    .prologue
    const/4 v5, 0x0

    .line 422
    iget-boolean v6, p0, Landroid/widget/GalleryWidget;->mIsRtl:Z

    if-eq p1, v6, :cond_1

    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 424
    .local v3, extremeItemPosition:I
    :goto_0
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Landroid/widget/GalleryWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 428
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_2

    move v5, p2

    .line 451
    :cond_0
    :goto_1
    return v5

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_1
    move v3, v5

    .line 422
    goto :goto_0

    .line 432
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_2
    invoke-static {v1}, Landroid/widget/GalleryWidget;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 433
    .local v2, extremeChildCenter:I
    invoke-direct {p0}, Landroid/widget/GalleryWidget;->getCenterOfGallery()I

    move-result v4

    .line 435
    .local v4, galleryCenter:I
    if-eqz p1, :cond_4

    .line 436
    if-le v2, v4, :cond_0

    .line 449
    :cond_3
    sub-int v0, v4, v2

    .line 451
    .local v0, centerDifference:I
    if-eqz p1, :cond_5

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 442
    .end local v0           #centerDifference:I
    :cond_4
    if-lt v2, v4, :cond_3

    goto :goto_1

    .line 451
    .restart local v0       #centerDifference:I
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method layout(IZ)V
    .locals 8
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 640
    iput-boolean v6, p0, Landroid/widget/GalleryWidget;->mIsRtl:Z

    .line 642
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->top:I

    .line 643
    .local v1, childrenTop:I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    .line 645
    .local v0, childrenHeight:I
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_0

    .line 646
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->handleDataChanged()V

    .line 650
    :cond_0
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v4, :cond_1

    .line 651
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->resetList()V

    .line 701
    :goto_0
    return-void

    .line 656
    :cond_1
    iget v4, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v4, :cond_2

    .line 657
    iget v4, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/GalleryWidget;->setSelectedPositionInt(I)V

    .line 661
    :cond_2
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->recycleAllViews()V

    .line 665
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->detachAllViewsFromParent()V

    .line 671
    iput v6, p0, Landroid/widget/GalleryWidget;->mRightMost:I

    .line 672
    iput v6, p0, Landroid/widget/GalleryWidget;->mLeftMost:I

    .line 680
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 681
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v6, v6, v5}, Landroid/widget/GalleryWidget;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 684
    .local v2, sel:Landroid/view/View;
    int-to-float v4, v1

    int-to-float v5, v0

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/widget/GalleryWidget;->mSelectedCenterOffset:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 685
    .local v3, selectedOffset:I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 687
    invoke-direct {p0}, Landroid/widget/GalleryWidget;->fillToGalleryRight()V

    .line 688
    invoke-direct {p0}, Landroid/widget/GalleryWidget;->fillToGalleryLeft()V

    .line 691
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 693
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->invalidate()V

    .line 694
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->checkSelectionChanged()V

    .line 696
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 697
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 698
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/GalleryWidget;->setNextSelectedPositionInt(I)V

    .line 700
    invoke-direct {p0}, Landroid/widget/GalleryWidget;->updateSelectedItemMetadata()V

    goto :goto_0
.end method

.method moveNext()Z
    .locals 2

    .prologue
    .line 1316
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1317
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/GalleryWidget;->scrollToChild(I)Z

    .line 1318
    const/4 v0, 0x1

    .line 1320
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method movePrevious()Z
    .locals 2

    .prologue
    .line 1307
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 1308
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Landroid/widget/GalleryWidget;->scrollToChild(I)Z

    .line 1309
    const/4 v0, 0x1

    .line 1311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1130
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->onUp()V

    .line 1131
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1097
    iget-object v0, p0, Landroid/widget/GalleryWidget;->mFlingRunnable:Landroid/widget/GalleryWidget$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GalleryWidget$FlingRunnable;->stop(Z)V

    .line 1100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/GalleryWidget;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GalleryWidget;->mDownTouchPosition:I

    .line 1102
    iget v0, p0, Landroid/widget/GalleryWidget;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 1103
    iget v0, p0, Landroid/widget/GalleryWidget;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/GalleryWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GalleryWidget;->mDownTouchView:Landroid/view/View;

    .line 1104
    iget-object v0, p0, Landroid/widget/GalleryWidget;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1108
    :cond_0
    iput-boolean v2, p0, Landroid/widget/GalleryWidget;->mIsFirstScroll:Z

    .line 1111
    return v2
.end method

.method protected onFinishedMovement()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 561
    iget-boolean v0, p0, Landroid/widget/GalleryWidget;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 562
    iput-boolean v1, p0, Landroid/widget/GalleryWidget;->mSuppressSelectionChanged:Z

    .line 565
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 567
    :cond_0
    iput v1, p0, Landroid/widget/GalleryWidget;->mSelectedCenterOffset:I

    .line 568
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->invalidate()V

    .line 569
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 1038
    iget-boolean v0, p0, Landroid/widget/GalleryWidget;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    .line 1042
    iget-object v0, p0, Landroid/widget/GalleryWidget;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/GalleryWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1045
    iget-boolean v0, p0, Landroid/widget/GalleryWidget;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/widget/GalleryWidget;->mSuppressSelectionChanged:Z

    .line 1049
    :cond_0
    iget-object v0, p0, Landroid/widget/GalleryWidget;->mFlingRunnable:Landroid/widget/GalleryWidget$FlingRunnable;

    neg-float v1, p4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/GalleryWidget$FlingRunnable;->startUsingVelocity(I)V

    .line 1051
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1410
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1417
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/GalleryWidget;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Landroid/widget/GalleryWidget;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1419
    iget-object v0, p0, Landroid/widget/GalleryWidget;->mSelectedChild:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1422
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1426
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1427
    const-class v0, Landroid/widget/GalleryWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1428
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v0, 0x1

    .line 1432
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1433
    const-class v1, Landroid/widget/GalleryWidget;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1434
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1435
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1436
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1437
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1439
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-lez v0, :cond_1

    .line 1440
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1443
    :cond_1
    return-void

    .line 1434
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1250
    sparse-switch p1, :sswitch_data_0

    .line 1270
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 1253
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->movePrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1254
    invoke-virtual {p0, v0}, Landroid/widget/GalleryWidget;->playSoundEffect(I)V

    goto :goto_1

    .line 1259
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->moveNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1260
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/widget/GalleryWidget;->playSoundEffect(I)V

    goto :goto_1

    .line 1266
    :sswitch_2
    iput-boolean v0, p0, Landroid/widget/GalleryWidget;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1250
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1275
    sparse-switch p1, :sswitch_data_0

    .line 1303
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1279
    :sswitch_0
    iget-boolean v1, p0, Landroid/widget/GalleryWidget;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_0

    .line 1280
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_0

    .line 1282
    iget-object v1, p0, Landroid/widget/GalleryWidget;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/GalleryWidget;->dispatchPress(Landroid/view/View;)V

    .line 1283
    new-instance v1, Landroid/widget/GalleryWidget$2;

    invoke-direct {v1, p0}, Landroid/widget/GalleryWidget$2;-><init>(Landroid/widget/GalleryWidget;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/GalleryWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1290
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1291
    .local v0, selectedIndex:I
    invoke-virtual {p0, v0}, Landroid/widget/GalleryWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v3, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/GalleryWidget;->performItemClick(Landroid/view/View;IJ)Z

    .line 1297
    .end local v0           #selectedIndex:I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/GalleryWidget;->mReceivedInvokeKeyDown:Z

    .line 1299
    const/4 v1, 0x1

    goto :goto_0

    .line 1275
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 354
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 361
    invoke-virtual {p0, v1, v1}, Landroid/widget/GalleryWidget;->layout(IZ)V

    .line 362
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 363
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 1136
    iget v2, p0, Landroid/widget/GalleryWidget;->mDownTouchPosition:I

    if-gez v2, :cond_0

    .line 1143
    :goto_0
    return-void

    .line 1140
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/GalleryWidget;->performHapticFeedback(I)Z

    .line 1141
    iget v2, p0, Landroid/widget/GalleryWidget;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/GalleryWidget;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1142
    .local v0, id:J
    iget-object v2, p0, Landroid/widget/GalleryWidget;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/GalleryWidget;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/widget/GalleryWidget;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1068
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1072
    iget-boolean v0, p0, Landroid/widget/GalleryWidget;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_2

    .line 1073
    iget-boolean v0, p0, Landroid/widget/GalleryWidget;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    .line 1079
    iget-boolean v0, p0, Landroid/widget/GalleryWidget;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Landroid/widget/GalleryWidget;->mSuppressSelectionChanged:Z

    .line 1080
    :cond_0
    iget-object v0, p0, Landroid/widget/GalleryWidget;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/GalleryWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1087
    :cond_1
    :goto_0
    float-to-int v0, p4

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/GalleryWidget;->trackMotionScroll(I)V

    .line 1089
    iput-boolean v4, p0, Landroid/widget/GalleryWidget;->mIsFirstScroll:Z

    .line 1090
    return v3

    .line 1083
    :cond_2
    iget-boolean v0, p0, Landroid/widget/GalleryWidget;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Landroid/widget/GalleryWidget;->mSuppressSelectionChanged:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1149
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 1018
    iget v0, p0, Landroid/widget/GalleryWidget;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    .line 1021
    iget v0, p0, Landroid/widget/GalleryWidget;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/widget/GalleryWidget;->scrollToChild(I)Z

    .line 1024
    iget-boolean v0, p0, Landroid/widget/GalleryWidget;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/GalleryWidget;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 1025
    :cond_0
    iget-object v0, p0, Landroid/widget/GalleryWidget;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Landroid/widget/GalleryWidget;->mDownTouchPosition:I

    iget-object v2, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Landroid/widget/GalleryWidget;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/GalleryWidget;->performItemClick(Landroid/view/View;IJ)Z

    .line 1029
    :cond_1
    const/4 v0, 0x1

    .line 1032
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1002
    iget-object v2, p0, Landroid/widget/GalleryWidget;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1004
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1005
    .local v0, action:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1007
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->onUp()V

    .line 1012
    :cond_0
    :goto_0
    return v1

    .line 1008
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1009
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Landroid/widget/GalleryWidget;->mFlingRunnable:Landroid/widget/GalleryWidget$FlingRunnable;

    #getter for: Landroid/widget/GalleryWidget$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Landroid/widget/GalleryWidget$FlingRunnable;->access$200(Landroid/widget/GalleryWidget$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    invoke-direct {p0}, Landroid/widget/GalleryWidget;->scrollIntoSlots()V

    .line 1123
    :cond_0
    invoke-direct {p0}, Landroid/widget/GalleryWidget;->dispatchUnpress()V

    .line 1124
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v1, 0x0

    .line 1447
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1448
    const/4 v1, 0x1

    .line 1464
    :cond_0
    :goto_0
    return v1

    .line 1450
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1452
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 1453
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1454
    .local v0, currentChildIndex:I
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Landroid/widget/GalleryWidget;->scrollToChild(I)Z

    move-result v1

    goto :goto_0

    .line 1458
    .end local v0           #currentChildIndex:I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-lez v2, :cond_0

    .line 1459
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1460
    .restart local v0       #currentChildIndex:I
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Landroid/widget/GalleryWidget;->scrollToChild(I)Z

    move-result v1

    goto :goto_0

    .line 1450
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Landroid/widget/GalleryWidget;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 574
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 576
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 276
    iput p1, p0, Landroid/widget/GalleryWidget;->mAnimationDuration:I

    .line 277
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 250
    iput-boolean p1, p0, Landroid/widget/GalleryWidget;->mShouldCallbackDuringFling:Z

    .line 251
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 263
    iput-boolean p1, p0, Landroid/widget/GalleryWidget;->mShouldCallbackOnUnselectedItemClick:Z

    .line 264
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1383
    iget v0, p0, Landroid/widget/GalleryWidget;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1384
    iput p1, p0, Landroid/widget/GalleryWidget;->mGravity:I

    .line 1385
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->requestLayout()V

    .line 1387
    :cond_0
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1338
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1341
    invoke-direct {p0}, Landroid/widget/GalleryWidget;->updateSelectedItemMetadata()V

    .line 1342
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 287
    iput p1, p0, Landroid/widget/GalleryWidget;->mSpacing:I

    .line 288
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 298
    iput p1, p0, Landroid/widget/GalleryWidget;->mUnselectedAlpha:F

    .line 299
    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1209
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1210
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1211
    .local v0, index:I
    invoke-virtual {p0, v0}, Landroid/widget/GalleryWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1212
    .local v1, v:Landroid/view/View;
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/GalleryWidget;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1215
    .end local v0           #index:I
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .parameter "originalView"

    .prologue
    .line 1197
    invoke-virtual {p0, p1}, Landroid/widget/GalleryWidget;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1198
    .local v2, longPressPosition:I
    if-gez v2, :cond_0

    .line 1199
    const/4 v3, 0x0

    .line 1203
    :goto_0
    return v3

    .line 1202
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1203
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/widget/GalleryWidget;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method trackMotionScroll(I)V
    .locals 8
    .parameter "deltaY"

    .prologue
    const/4 v6, 0x0

    .line 378
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    .line 419
    :goto_0
    return-void

    .line 382
    :cond_0
    if-gez p1, :cond_3

    const/4 v5, 0x1

    .line 384
    .local v5, toTop:Z
    :goto_1
    invoke-virtual {p0, v5, p1}, Landroid/widget/GalleryWidget;->getLimitedMotionScrollAmount(ZI)I

    move-result v3

    .line 385
    .local v3, limitedDeltaY:I
    if-eq v3, p1, :cond_1

    .line 387
    iget-object v7, p0, Landroid/widget/GalleryWidget;->mFlingRunnable:Landroid/widget/GalleryWidget$FlingRunnable;

    #calls: Landroid/widget/GalleryWidget$FlingRunnable;->endFling(Z)V
    invoke-static {v7, v6}, Landroid/widget/GalleryWidget$FlingRunnable;->access$100(Landroid/widget/GalleryWidget$FlingRunnable;Z)V

    .line 388
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->onFinishedMovement()V

    .line 391
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/GalleryWidget;->offsetChildrenTopAndBottom(I)V

    .line 393
    invoke-direct {p0, v5}, Landroid/widget/GalleryWidget;->detachOffScreenChildren(Z)V

    .line 395
    if-eqz v5, :cond_4

    .line 397
    invoke-direct {p0}, Landroid/widget/GalleryWidget;->fillToGalleryRight()V

    .line 404
    :goto_2
    iget-object v7, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v7}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 406
    invoke-direct {p0}, Landroid/widget/GalleryWidget;->setSelectionToCenterChild()V

    .line 408
    iget-object v4, p0, Landroid/widget/GalleryWidget;->mSelectedChild:Landroid/view/View;

    .line 409
    .local v4, selChild:Landroid/view/View;
    if-eqz v4, :cond_2

    .line 410
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v1

    .line 411
    .local v1, childTop:I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v0, v7, 0x2

    .line 412
    .local v0, childCenter:I
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->getHeight()I

    move-result v7

    div-int/lit8 v2, v7, 0x2

    .line 413
    .local v2, galleryCenter:I
    add-int v7, v1, v0

    sub-int/2addr v7, v2

    iput v7, p0, Landroid/widget/GalleryWidget;->mSelectedCenterOffset:I

    .line 416
    .end local v0           #childCenter:I
    .end local v1           #childTop:I
    .end local v2           #galleryCenter:I
    :cond_2
    invoke-virtual {p0, v6, v6, v6, v6}, Landroid/widget/GalleryWidget;->onScrollChanged(IIII)V

    .line 418
    invoke-virtual {p0}, Landroid/widget/GalleryWidget;->invalidate()V

    goto :goto_0

    .end local v3           #limitedDeltaY:I
    .end local v4           #selChild:Landroid/view/View;
    .end local v5           #toTop:Z
    :cond_3
    move v5, v6

    .line 382
    goto :goto_1

    .line 400
    .restart local v3       #limitedDeltaY:I
    .restart local v5       #toTop:Z
    :cond_4
    invoke-direct {p0}, Landroid/widget/GalleryWidget;->fillToGalleryLeft()V

    goto :goto_2
.end method
