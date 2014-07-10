.class public Landroid/widget/V5Switch;
.super Landroid/widget/CompoundButton;
.source "V5Switch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I = null

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/widget/V5Switch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/V5Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 124
    const v0, 0x101040d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/V5Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/V5Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 100
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/V5Switch;->mTempRect:Landroid/graphics/Rect;

    .line 139
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v7}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, p0, Landroid/widget/V5Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 140
    invoke-virtual {p0}, Landroid/widget/V5Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 141
    .local v3, res:Landroid/content/res/Resources;
    iget-object v4, p0, Landroid/widget/V5Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, v4, Landroid/text/TextPaint;->density:F

    .line 142
    iget-object v4, p0, Landroid/widget/V5Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 144
    sget-object v4, Lcom/android/internal/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 151
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080842

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/V5Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080839

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/V5Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 155
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/V5Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 156
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/V5Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 157
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/V5Switch;->mThumbTextPadding:I

    .line 159
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/V5Switch;->mSwitchMinWidth:I

    .line 161
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/V5Switch;->mSwitchPadding:I

    .line 164
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 166
    .local v1, appearance:I
    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {p0, p1, v1}, Landroid/widget/V5Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 169
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 172
    .local v2, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Landroid/widget/V5Switch;->mTouchSlop:I

    .line 173
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/widget/V5Switch;->mMinFlingVelocity:I

    .line 176
    invoke-virtual {p0}, Landroid/widget/V5Switch;->refreshDrawableState()V

    .line 177
    invoke-virtual {p0}, Landroid/widget/V5Switch;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/V5Switch;->setChecked(Z)V

    .line 178
    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 0
    .parameter "newCheckedState"

    .prologue
    .line 679
    invoke-virtual {p0, p1}, Landroid/widget/V5Switch;->setChecked(Z)V

    .line 680
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 642
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 643
    .local v0, cancel:Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 644
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 645
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 646
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 683
    iget v0, p0, Landroid/widget/V5Switch;->mThumbPosition:F

    invoke-direct {p0}, Landroid/widget/V5Switch;->getThumbScrollRange()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Landroid/widget/V5Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 789
    const/4 v0, 0x0

    .line 792
    :goto_0
    return v0

    .line 791
    :cond_0
    iget-object v0, p0, Landroid/widget/V5Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/V5Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 792
    iget v0, p0, Landroid/widget/V5Switch;->mSwitchWidth:I

    iget v1, p0, Landroid/widget/V5Switch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/V5Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/V5Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private hitThumb(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 565
    iget-object v4, p0, Landroid/widget/V5Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/V5Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 566
    iget v4, p0, Landroid/widget/V5Switch;->mSwitchTop:I

    iget v5, p0, Landroid/widget/V5Switch;->mTouchSlop:I

    sub-int v3, v4, v5

    .line 567
    .local v3, thumbTop:I
    iget v4, p0, Landroid/widget/V5Switch;->mSwitchLeft:I

    iget v5, p0, Landroid/widget/V5Switch;->mThumbPosition:F

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/V5Switch;->mTouchSlop:I

    sub-int v1, v4, v5

    .line 568
    .local v1, thumbLeft:I
    iget v4, p0, Landroid/widget/V5Switch;->mThumbWidth:I

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/widget/V5Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/V5Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/V5Switch;->mTouchSlop:I

    add-int v2, v4, v5

    .line 570
    .local v2, thumbRight:I
    iget v4, p0, Landroid/widget/V5Switch;->mSwitchBottom:I

    iget v5, p0, Landroid/widget/V5Switch;->mTouchSlop:I

    add-int v0, v4, v5

    .line 571
    .local v0, thumbBottom:I
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    int-to-float v4, v3

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    int-to-float v4, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .parameter "text"

    .prologue
    .line 552
    iget-object v0, p0, Landroid/widget/V5Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/V5Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod2;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 556
    .local v1, transformed:Ljava/lang/CharSequence;
    :goto_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/widget/V5Switch;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/widget/V5Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    .end local v1           #transformed:Ljava/lang/CharSequence;
    :cond_0
    move-object v1, p1

    .line 552
    goto :goto_0
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 1
    .parameter "typefaceIndex"
    .parameter "styleIndex"

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, tf:Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    .line 249
    :goto_0
    invoke-virtual {p0, v0, p2}, Landroid/widget/V5Switch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 250
    return-void

    .line 237
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 238
    goto :goto_0

    .line 241
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 242
    goto :goto_0

    .line 245
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 654
    iput v4, p0, Landroid/widget/V5Switch;->mTouchMode:I

    .line 656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/V5Switch;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 658
    .local v0, commitChange:Z
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/V5Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 660
    if-eqz v0, :cond_3

    .line 662
    iget-object v5, p0, Landroid/widget/V5Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 663
    iget-object v5, p0, Landroid/widget/V5Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 664
    .local v2, xvel:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/widget/V5Switch;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 665
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    move v1, v3

    .line 669
    .local v1, newState:Z
    :goto_1
    invoke-direct {p0, v1}, Landroid/widget/V5Switch;->animateThumbToCheckedState(Z)V

    .line 673
    .end local v1           #newState:Z
    .end local v2           #xvel:F
    :goto_2
    return-void

    .end local v0           #commitChange:Z
    :cond_0
    move v0, v4

    .line 656
    goto :goto_0

    .restart local v0       #commitChange:Z
    .restart local v2       #xvel:F
    :cond_1
    move v1, v4

    .line 665
    goto :goto_1

    .line 667
    :cond_2
    invoke-direct {p0}, Landroid/widget/V5Switch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1       #newState:Z
    goto :goto_1

    .line 671
    .end local v1           #newState:Z
    .end local v2           #xvel:F
    :cond_3
    invoke-virtual {p0}, Landroid/widget/V5Switch;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/V5Switch;->animateThumbToCheckedState(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 806
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 808
    invoke-virtual {p0}, Landroid/widget/V5Switch;->getDrawableState()[I

    move-result-object v0

    .line 812
    .local v0, myDrawableState:[I
    iget-object v1, p0, Landroid/widget/V5Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/V5Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 813
    :cond_0
    iget-object v1, p0, Landroid/widget/V5Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/V5Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 815
    :cond_1
    invoke-virtual {p0}, Landroid/widget/V5Switch;->invalidate()V

    .line 816
    return-void
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 780
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Landroid/widget/V5Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 781
    .local v0, padding:I
    invoke-virtual {p0}, Landroid/widget/V5Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 782
    iget v1, p0, Landroid/widget/V5Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 784
    :cond_0
    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Landroid/widget/V5Switch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Landroid/widget/V5Switch;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Landroid/widget/V5Switch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Landroid/widget/V5Switch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Landroid/widget/V5Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Landroid/widget/V5Switch;->mThumbTextPadding:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Landroid/widget/V5Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 825
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 826
    iget-object v0, p0, Landroid/widget/V5Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 827
    iget-object v0, p0, Landroid/widget/V5Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 828
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 797
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 798
    .local v0, drawableState:[I
    invoke-virtual {p0}, Landroid/widget/V5Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    sget-object v1, Landroid/widget/V5Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/V5Switch;->mergeDrawableStates([I[I)[I

    .line 801
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 730
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 733
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/V5Switch;->mSwitchLeft:I

    .line 734
    .local v6, switchLeft:I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/V5Switch;->mSwitchTop:I

    .line 735
    .local v9, switchTop:I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/V5Switch;->mSwitchRight:I

    .line 736
    .local v7, switchRight:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/V5Switch;->mSwitchBottom:I

    .line 738
    .local v1, switchBottom:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/V5Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14, v6, v9, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 739
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/V5Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 741
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 743
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/V5Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/V5Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 744
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/V5Switch;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    add-int v3, v6, v14

    .line 745
    .local v3, switchInnerLeft:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/V5Switch;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    add-int v5, v9, v14

    .line 746
    .local v5, switchInnerTop:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/V5Switch;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int v4, v7, v14

    .line 747
    .local v4, switchInnerRight:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/V5Switch;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v1, v14

    .line 748
    .local v2, switchInnerBottom:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v9, v4, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 750
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/V5Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/V5Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 751
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/V5Switch;->mThumbPosition:F

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v11, v14

    .line 752
    .local v11, thumbPos:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/V5Switch;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    sub-int v14, v3, v14

    add-int v10, v14, v11

    .line 753
    .local v10, thumbLeft:I
    add-int v14, v3, v11

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/V5Switch;->mThumbWidth:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/V5Switch;->mTempRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    add-int v12, v14, v15

    .line 755
    .local v12, thumbRight:I
    sub-int v14, v1, v9

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/V5Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    mul-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/V5Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    div-int v13, v14, v15

    .line 758
    .local v13, thumbShowWidth:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/V5Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    add-int v15, v10, v13

    invoke-virtual {v14, v10, v9, v15, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 760
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/V5Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/V5Switch;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v14, :cond_0

    .line 764
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/V5Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/V5Switch;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/V5Switch;->getDrawableState()[I

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/V5Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/text/TextPaint;->setColor(I)V

    .line 767
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/V5Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/V5Switch;->getDrawableState()[I

    move-result-object v15

    iput-object v15, v14, Landroid/text/TextPaint;->drawableState:[I

    .line 769
    invoke-direct/range {p0 .. p0}, Landroid/widget/V5Switch;->getTargetCheckedState()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/V5Switch;->mOnLayout:Landroid/text/Layout;

    .line 771
    .local v8, switchText:Landroid/text/Layout;
    :goto_0
    add-int v14, v10, v12

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v8}, Landroid/text/Layout;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    int-to-float v14, v14

    add-int v15, v5, v2

    div-int/lit8 v15, v15, 0x2

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 775
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 776
    return-void

    .line 769
    .end local v8           #switchText:Landroid/text/Layout;
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/V5Switch;->mOffLayout:Landroid/text/Layout;

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 832
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 833
    const-class v0, Landroid/widget/V5Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 834
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 838
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 839
    const-class v3, Landroid/widget/V5Switch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 840
    invoke-virtual {p0}, Landroid/widget/V5Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Landroid/widget/V5Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 841
    .local v2, switchText:Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 842
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 843
    .local v1, oldText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 844
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 851
    .end local v1           #oldText:Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .line 840
    .end local v2           #switchText:Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Landroid/widget/V5Switch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 846
    .restart local v1       #oldText:Ljava/lang/CharSequence;
    .restart local v2       #switchText:Ljava/lang/CharSequence;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 847
    .local v0, newText:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 848
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 695
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 697
    invoke-virtual {p0}, Landroid/widget/V5Switch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Landroid/widget/V5Switch;->getThumbScrollRange()I

    move-result v4

    int-to-float v4, v4

    :goto_0
    iput v4, p0, Landroid/widget/V5Switch;->mThumbPosition:F

    .line 699
    invoke-virtual {p0}, Landroid/widget/V5Switch;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/V5Switch;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 700
    .local v2, switchRight:I
    iget v4, p0, Landroid/widget/V5Switch;->mSwitchWidth:I

    sub-int v1, v2, v4

    .line 701
    .local v1, switchLeft:I
    const/4 v3, 0x0

    .line 702
    .local v3, switchTop:I
    const/4 v0, 0x0

    .line 703
    .local v0, switchBottom:I
    invoke-virtual {p0}, Landroid/widget/V5Switch;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 706
    invoke-virtual {p0}, Landroid/widget/V5Switch;->getPaddingTop()I

    move-result v3

    .line 707
    iget v4, p0, Landroid/widget/V5Switch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 722
    :goto_1
    iput v1, p0, Landroid/widget/V5Switch;->mSwitchLeft:I

    .line 723
    iput v3, p0, Landroid/widget/V5Switch;->mSwitchTop:I

    .line 724
    iput v0, p0, Landroid/widget/V5Switch;->mSwitchBottom:I

    .line 725
    iput v2, p0, Landroid/widget/V5Switch;->mSwitchRight:I

    .line 726
    return-void

    .line 697
    .end local v0           #switchBottom:I
    .end local v1           #switchLeft:I
    .end local v2           #switchRight:I
    .end local v3           #switchTop:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 711
    .restart local v0       #switchBottom:I
    .restart local v1       #switchLeft:I
    .restart local v2       #switchRight:I
    .restart local v3       #switchTop:I
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/V5Switch;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/V5Switch;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/V5Switch;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Landroid/widget/V5Switch;->mSwitchHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 713
    iget v4, p0, Landroid/widget/V5Switch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 714
    goto :goto_1

    .line 717
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/V5Switch;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/V5Switch;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 718
    iget v4, p0, Landroid/widget/V5Switch;->mSwitchHeight:I

    sub-int v3, v0, v4

    goto :goto_1

    .line 703
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 480
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 481
    .local v6, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 482
    .local v0, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 483
    .local v7, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 486
    .local v1, heightSize:I
    iget-object v8, p0, Landroid/widget/V5Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v8, :cond_0

    .line 487
    iget-object v8, p0, Landroid/widget/V5Switch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v8}, Landroid/widget/V5Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/V5Switch;->mOnLayout:Landroid/text/Layout;

    .line 489
    :cond_0
    iget-object v8, p0, Landroid/widget/V5Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v8, :cond_1

    .line 490
    iget-object v8, p0, Landroid/widget/V5Switch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v8}, Landroid/widget/V5Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/V5Switch;->mOffLayout:Landroid/text/Layout;

    .line 493
    :cond_1
    iget-object v8, p0, Landroid/widget/V5Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/V5Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 494
    iget-object v8, p0, Landroid/widget/V5Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v8}, Landroid/text/Layout;->getWidth()I

    move-result v8

    iget-object v9, p0, Landroid/widget/V5Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v9}, Landroid/text/Layout;->getWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 495
    .local v2, maxTextWidth:I
    iget v8, p0, Landroid/widget/V5Switch;->mSwitchMinWidth:I

    mul-int/lit8 v9, v2, 0x2

    iget v10, p0, Landroid/widget/V5Switch;->mThumbTextPadding:I

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/V5Switch;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/V5Switch;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 497
    .local v5, switchWidth:I
    iget-object v8, p0, Landroid/widget/V5Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 501
    .local v4, switchHeight:I
    iget-object v8, p0, Landroid/widget/V5Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    iput v8, p0, Landroid/widget/V5Switch;->mThumbWidth:I

    .line 504
    sparse-switch v6, :sswitch_data_0

    .line 518
    :goto_0
    sparse-switch v0, :sswitch_data_1

    .line 532
    :goto_1
    iput v5, p0, Landroid/widget/V5Switch;->mSwitchWidth:I

    .line 533
    iput v4, p0, Landroid/widget/V5Switch;->mSwitchHeight:I

    .line 535
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 536
    invoke-virtual {p0}, Landroid/widget/V5Switch;->getMeasuredHeight()I

    move-result v3

    .line 537
    .local v3, measuredHeight:I
    if-ge v3, v4, :cond_2

    .line 538
    invoke-virtual {p0}, Landroid/widget/V5Switch;->getMeasuredWidthAndState()I

    move-result v8

    invoke-virtual {p0, v8, v4}, Landroid/widget/V5Switch;->setMeasuredDimension(II)V

    .line 540
    :cond_2
    return-void

    .line 506
    .end local v3           #measuredHeight:I
    :sswitch_0
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 507
    goto :goto_0

    .line 510
    :sswitch_1
    move v7, v5

    .line 511
    goto :goto_0

    .line 520
    :sswitch_2
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 521
    goto :goto_1

    .line 524
    :sswitch_3
    move v1, v4

    .line 525
    goto :goto_1

    .line 504
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch

    .line 518
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 544
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 545
    invoke-virtual {p0}, Landroid/widget/V5Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/V5Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 546
    .local v0, text:Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_0
    return-void

    .line 545
    .end local v0           #text:Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Landroid/widget/V5Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 576
    iget-object v6, p0, Landroid/widget/V5Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 577
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 578
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 638
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_1
    :goto_1
    return v5

    .line 580
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 581
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 582
    .local v4, y:F
    invoke-virtual {p0}, Landroid/widget/V5Switch;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v3, v4}, Landroid/widget/V5Switch;->hitThumb(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 583
    iput v5, p0, Landroid/widget/V5Switch;->mTouchMode:I

    .line 584
    iput v3, p0, Landroid/widget/V5Switch;->mTouchX:F

    .line 585
    iput v4, p0, Landroid/widget/V5Switch;->mTouchY:F

    goto :goto_0

    .line 591
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_2
    iget v6, p0, Landroid/widget/V5Switch;->mTouchMode:I

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 597
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 598
    .restart local v3       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 599
    .restart local v4       #y:F
    iget v6, p0, Landroid/widget/V5Switch;->mTouchX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/widget/V5Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_2

    iget v6, p0, Landroid/widget/V5Switch;->mTouchY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/widget/V5Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 601
    :cond_2
    iput v8, p0, Landroid/widget/V5Switch;->mTouchMode:I

    .line 602
    invoke-virtual {p0}, Landroid/widget/V5Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 603
    iput v3, p0, Landroid/widget/V5Switch;->mTouchX:F

    .line 604
    iput v4, p0, Landroid/widget/V5Switch;->mTouchY:F

    goto :goto_1

    .line 611
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 612
    .restart local v3       #x:F
    iget v6, p0, Landroid/widget/V5Switch;->mTouchX:F

    sub-float v1, v3, v6

    .line 613
    .local v1, dx:F
    const/4 v6, 0x0

    iget v7, p0, Landroid/widget/V5Switch;->mThumbPosition:F

    add-float/2addr v7, v1

    invoke-direct {p0}, Landroid/widget/V5Switch;->getThumbScrollRange()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 615
    .local v2, newPos:F
    iget v6, p0, Landroid/widget/V5Switch;->mThumbPosition:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_1

    .line 616
    iput v2, p0, Landroid/widget/V5Switch;->mThumbPosition:F

    .line 617
    iput v3, p0, Landroid/widget/V5Switch;->mTouchX:F

    .line 618
    invoke-virtual {p0}, Landroid/widget/V5Switch;->invalidate()V

    goto :goto_1

    .line 628
    .end local v1           #dx:F
    .end local v2           #newPos:F
    .end local v3           #x:F
    :pswitch_5
    iget v6, p0, Landroid/widget/V5Switch;->mTouchMode:I

    if-ne v6, v8, :cond_3

    .line 629
    invoke-direct {p0, p1}, Landroid/widget/V5Switch;->stopDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 632
    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/V5Switch;->mTouchMode:I

    .line 633
    iget-object v5, p0, Landroid/widget/V5Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 578
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 591
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 688
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 689
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/V5Switch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Landroid/widget/V5Switch;->mThumbPosition:F

    .line 690
    invoke-virtual {p0}, Landroid/widget/V5Switch;->invalidate()V

    .line 691
    return-void

    .line 689
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSwitchMinWidth(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 330
    iput p1, p0, Landroid/widget/V5Switch;->mSwitchMinWidth:I

    .line 331
    invoke-virtual {p0}, Landroid/widget/V5Switch;->requestLayout()V

    .line 332
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 306
    iput p1, p0, Landroid/widget/V5Switch;->mSwitchPadding:I

    .line 307
    invoke-virtual {p0}, Landroid/widget/V5Switch;->requestLayout()V

    .line 308
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 11
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 187
    sget-object v6, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 194
    .local v1, appearance:Landroid/content/res/TypedArray;
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 196
    .local v2, colors:Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1

    .line 197
    iput-object v2, p0, Landroid/widget/V5Switch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 203
    :goto_0
    invoke-virtual {v1, v8, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 205
    .local v4, ts:I
    if-eqz v4, :cond_0

    .line 206
    int-to-float v6, v4

    iget-object v7, p0, Landroid/widget/V5Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getTextSize()F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 207
    iget-object v6, p0, Landroid/widget/V5Switch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 208
    invoke-virtual {p0}, Landroid/widget/V5Switch;->requestLayout()V

    .line 214
    :cond_0
    invoke-virtual {v1, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 216
    .local v5, typefaceIndex:I
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 219
    .local v3, styleIndex:I
    invoke-direct {p0, v5, v3}, Landroid/widget/V5Switch;->setSwitchTypefaceByIndex(II)V

    .line 221
    const/4 v6, 0x7

    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 223
    .local v0, allCaps:Z
    if-eqz v0, :cond_2

    .line 224
    new-instance v6, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/V5Switch;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/widget/V5Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    .line 225
    iget-object v6, p0, Landroid/widget/V5Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {v6, v10}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    .line 230
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 231
    return-void

    .line 200
    .end local v0           #allCaps:Z
    .end local v3           #styleIndex:I
    .end local v4           #ts:I
    .end local v5           #typefaceIndex:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/V5Switch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/V5Switch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 227
    .restart local v0       #allCaps:Z
    .restart local v3       #styleIndex:I
    .restart local v4       #ts:I
    .restart local v5       #typefaceIndex:I
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/V5Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    goto :goto_1
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .parameter "tf"

    .prologue
    .line 290
    iget-object v0, p0, Landroid/widget/V5Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 291
    iget-object v0, p0, Landroid/widget/V5Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 293
    invoke-virtual {p0}, Landroid/widget/V5Switch;->requestLayout()V

    .line 294
    invoke-virtual {p0}, Landroid/widget/V5Switch;->invalidate()V

    .line 296
    :cond_0
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .parameter "tf"
    .parameter "style"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 259
    if-lez p2, :cond_4

    .line 260
    if-nez p1, :cond_1

    .line 261
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 266
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/V5Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 268
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 269
    .local v1, typefaceStyle:I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 270
    .local v0, need:I
    iget-object v4, p0, Landroid/widget/V5Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 271
    iget-object v4, p0, Landroid/widget/V5Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x4180

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 277
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :goto_3
    return-void

    .line 263
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 268
    goto :goto_1

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_3
    move v2, v3

    .line 271
    goto :goto_2

    .line 273
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_4
    iget-object v4, p0, Landroid/widget/V5Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 274
    iget-object v2, p0, Landroid/widget/V5Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 275
    invoke-virtual {p0, p1}, Landroid/widget/V5Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "textOff"

    .prologue
    .line 474
    iput-object p1, p0, Landroid/widget/V5Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 475
    invoke-virtual {p0}, Landroid/widget/V5Switch;->requestLayout()V

    .line 476
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "textOn"

    .prologue
    .line 455
    iput-object p1, p0, Landroid/widget/V5Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 456
    invoke-virtual {p0}, Landroid/widget/V5Switch;->requestLayout()V

    .line 457
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "thumb"

    .prologue
    .line 412
    iput-object p1, p0, Landroid/widget/V5Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 413
    invoke-virtual {p0}, Landroid/widget/V5Switch;->requestLayout()V

    .line 414
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 425
    invoke-virtual {p0}, Landroid/widget/V5Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/V5Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 426
    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 354
    iput p1, p0, Landroid/widget/V5Switch;->mThumbTextPadding:I

    .line 355
    invoke-virtual {p0}, Landroid/widget/V5Switch;->requestLayout()V

    .line 356
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "track"

    .prologue
    .line 377
    iput-object p1, p0, Landroid/widget/V5Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 378
    invoke-virtual {p0}, Landroid/widget/V5Switch;->requestLayout()V

    .line 379
    return-void
.end method

.method public setTrackResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 389
    invoke-virtual {p0}, Landroid/widget/V5Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/V5Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 820
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/V5Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/V5Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
