.class public Lcom/android/internal/policy/impl/keyguard/GalleryFlow;
.super Landroid/widget/GalleryWidget;
.source "GalleryFlow.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$IGetVisibilityAlbum;


# instance fields
.field private MAX_TRAN:F

.field private MIN_ROATION:I

.field private PER_APL:F

.field private PER_TRAN:F

.field private mCamera:Landroid/graphics/Camera;

.field private mCoveflowCenter:F

.field private mIsAttached:Z

.field private mMaxRotationAngle:I

.field private mMaxZoom:I

.field private mMusicClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/GalleryWidget;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mIsAttached:Z

    .line 29
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mMaxRotationAngle:I

    .line 31
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->PER_TRAN:F

    .line 32
    const/high16 v0, 0x437a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->MAX_TRAN:F

    .line 33
    const v0, 0x3e99999a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->PER_APL:F

    .line 34
    const/16 v0, -0x3c

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->MIN_ROATION:I

    .line 37
    const/16 v0, -0x78

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mMaxZoom:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mMusicClickListener:Landroid/view/View$OnClickListener;

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->setStaticTransformationsEnabled(Z)V

    .line 50
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->setUnselectedAlpha(F)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/GalleryWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mIsAttached:Z

    .line 29
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mMaxRotationAngle:I

    .line 31
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->PER_TRAN:F

    .line 32
    const/high16 v0, 0x437a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->MAX_TRAN:F

    .line 33
    const v0, 0x3e99999a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->PER_APL:F

    .line 34
    const/16 v0, -0x3c

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->MIN_ROATION:I

    .line 37
    const/16 v0, -0x78

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mMaxZoom:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mMusicClickListener:Landroid/view/View$OnClickListener;

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->setStaticTransformationsEnabled(Z)V

    .line 60
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->setUnselectedAlpha(F)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GalleryWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mIsAttached:Z

    .line 29
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mMaxRotationAngle:I

    .line 31
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->PER_TRAN:F

    .line 32
    const/high16 v0, 0x437a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->MAX_TRAN:F

    .line 33
    const v0, 0x3e99999a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->PER_APL:F

    .line 34
    const/16 v0, -0x3c

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->MIN_ROATION:I

    .line 37
    const/16 v0, -0x78

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mMaxZoom:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mMusicClickListener:Landroid/view/View$OnClickListener;

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->setStaticTransformationsEnabled(Z)V

    .line 69
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->setUnselectedAlpha(F)V

    .line 70
    return-void
.end method

.method private getCenterOfCoverflow()F
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private transformImageBitmap(Landroid/view/View;Landroid/graphics/Matrix;FF)V
    .locals 4
    .parameter "child"
    .parameter "imageMatrix"
    .parameter "rotationAngle"
    .parameter "translationZ"

    .prologue
    const/4 v3, 0x0

    .line 379
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 383
    .local v0, imageHeight:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 392
    .local v1, imageWidth:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2, p3}, Landroid/graphics/Camera;->rotateX(F)V

    .line 393
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2, v3, v3, p4}, Landroid/graphics/Camera;->translate(FFF)V

    .line 395
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 397
    div-int/lit8 v2, v1, 0x2

    neg-int v2, v2

    int-to-float v2, v2

    div-int/lit8 v3, v0, 0x2

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 399
    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 401
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    .line 403
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 425
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mIsAttached:Z

    if-nez v4, :cond_0

    .line 440
    :goto_0
    return-void

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->getChildCount()I

    move-result v1

    .line 431
    .local v1, size:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->getDrawingTime()J

    move-result-wide v2

    .line 433
    .local v2, time:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 434
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->getChildAt(I)Landroid/view/View;

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 439
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GalleryWidget;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 412
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 413
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->getMatrix(Landroid/view/View;Landroid/graphics/Matrix;)Z

    .line 414
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 415
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 416
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 417
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 418
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/GalleryWidget;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 419
    .local v1, res:Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 420
    return v1
.end method

.method protected getMatrix(Landroid/view/View;Landroid/graphics/Matrix;)Z
    .locals 10
    .parameter "child"
    .parameter "t"

    .prologue
    const v9, 0x3f4ccccd

    const/4 v8, 0x0

    .line 284
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 286
    .local v1, childCenter:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v2, v5

    .line 288
    .local v2, childHeight:F
    const/4 v3, 0x0

    .line 290
    .local v3, rotationAngle:F
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->getCenterOfCoverflow()F

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mCoveflowCenter:F

    .line 292
    int-to-float v5, v1

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mCoveflowCenter:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 294
    const/high16 v5, 0x3f80

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 295
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-direct {p0, p1, p2, v8, v8}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->transformImageBitmap(Landroid/view/View;Landroid/graphics/Matrix;FF)V

    .line 334
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 299
    .restart local p1
    :cond_0
    int-to-float v5, v1

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mCoveflowCenter:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 301
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->MIN_ROATION:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mCoveflowCenter:F

    int-to-float v7, v1

    sub-float/2addr v6, v7

    div-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float v3, v5, v6

    .line 302
    const/4 v4, 0x0

    .line 303
    .local v4, translationZ:F
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mCoveflowCenter:F

    int-to-float v6, v1

    sub-float/2addr v5, v6

    cmpl-float v5, v5, v2

    if-lez v5, :cond_3

    .line 304
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->MAX_TRAN:F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mCoveflowCenter:F

    int-to-float v7, v1

    sub-float/2addr v6, v7

    sub-float/2addr v6, v2

    float-to-int v6, v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->PER_TRAN:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float v4, v5, v6

    .line 311
    :goto_1
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mCoveflowCenter:F

    int-to-float v6, v1

    sub-float/2addr v5, v6

    div-float/2addr v5, v2

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->PER_APL:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v0, v9, v5

    .line 312
    .local v0, alpha:F
    cmpg-float v5, v0, v8

    if-gez v5, :cond_1

    .line 313
    const/4 v0, 0x0

    .line 315
    :cond_1
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->MIN_ROATION:I

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2

    .line 316
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->MIN_ROATION:I

    int-to-float v3, v5

    .line 319
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 320
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->transformImageBitmap(Landroid/view/View;Landroid/graphics/Matrix;FF)V

    goto :goto_0

    .line 306
    .end local v0           #alpha:F
    .restart local p1
    :cond_3
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mCoveflowCenter:F

    int-to-float v6, v1

    sub-float/2addr v5, v6

    div-float/2addr v5, v2

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->MAX_TRAN:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    goto :goto_1

    .line 325
    .end local v4           #translationZ:F
    :cond_4
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mCoveflowCenter:F

    int-to-float v6, v1

    sub-float/2addr v5, v6

    div-float/2addr v5, v2

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->MAX_TRAN:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 326
    .restart local v4       #translationZ:F
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mCoveflowCenter:F

    int-to-float v6, v1

    sub-float/2addr v5, v6

    div-float/2addr v5, v2

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->PER_APL:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v0, v9, v5

    .line 327
    .restart local v0       #alpha:F
    cmpg-float v5, v0, v8

    if-gez v5, :cond_5

    .line 328
    const/4 v0, 0x0

    .line 330
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 331
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-direct {p0, p1, p2, v8, v4}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->transformImageBitmap(Landroid/view/View;Landroid/graphics/Matrix;FF)V

    goto/16 :goto_0
.end method

.method public getMaxZoom()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mMaxZoom:I

    return v0
.end method

.method public getVisibleAlbum([I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 445
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->getFirstVisiblePosition()I

    move-result v1

    aput v1, p1, v0

    .line 446
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->getLastVisiblePosition()I

    move-result v1

    aput v1, p1, v0

    .line 447
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->onAttachedToWindow()V

    .line 90
    invoke-super {p0}, Landroid/widget/GalleryWidget;->onAttachedToWindow()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mIsAttached:Z

    .line 92
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/GalleryWidget;->onDetachedFromWindow()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mIsAttached:Z

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->onDetachedFromWindow()V

    .line 101
    return-void
.end method

.method protected onFinishedMovement()V
    .locals 3

    .prologue
    .line 274
    invoke-super {p0}, Landroid/widget/GalleryWidget;->onFinishedMovement()V

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 276
    .local v0, adapter:Landroid/widget/SpinnerAdapter;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 277
    check-cast v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    .line 278
    .local v1, imageAdapter:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->onFinishedMovement(I)V

    .line 280
    .end local v1           #imageAdapter:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;
    :cond_0
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mMusicClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mMusicClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 256
    const/4 v0, 0x1

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->getCenterOfCoverflow()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mCoveflowCenter:F

    .line 265
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/GalleryWidget;->onSizeChanged(IIII)V

    .line 267
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    .line 117
    .local v0, oldadapter:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;
    invoke-super {p0, p1}, Landroid/widget/GalleryWidget;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 118
    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->onDetachedFromWindow()V

    .line 121
    :cond_0
    if-eqz p1, :cond_1

    .line 122
    check-cast p1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->onAttachedToWindow()V

    .line 124
    :cond_1
    return-void
.end method

.method public setMaxRotationAngle(I)V
    .locals 0
    .parameter "maxRotationAngle"

    .prologue
    .line 133
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mMaxRotationAngle:I

    .line 135
    return-void
.end method

.method public setMaxZoom(I)V
    .locals 0
    .parameter "maxZoom"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mMaxZoom:I

    .line 147
    return-void
.end method

.method public setOnMusicClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->mMusicClickListener:Landroid/view/View$OnClickListener;

    .line 74
    return-void
.end method
