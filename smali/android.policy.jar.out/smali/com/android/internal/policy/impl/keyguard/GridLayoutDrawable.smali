.class public Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GridLayoutDrawable.java"


# instance fields
.field private mDrawables:[Landroid/graphics/drawable/Drawable;

.field mGridHeight:I

.field mGridWidth:I

.field mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 10
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mGridWidth:I

    .line 11
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mGridHeight:I

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mRect:Landroid/graphics/Rect;

    .line 43
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawables"

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 10
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mGridWidth:I

    .line 11
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mGridHeight:I

    .line 12
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mRect:Landroid/graphics/Rect;

    .line 15
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 16
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 17
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mRect:Landroid/graphics/Rect;

    .line 18
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mGridWidth:I

    if-le v1, v2, :cond_0

    .line 19
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mGridWidth:I

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mGridHeight:I

    if-le v1, v2, :cond_1

    .line 22
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mGridHeight:I

    .line 16
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 35
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mGridHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;->mGridWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "bounds"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 32
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 55
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 61
    return-void
.end method
