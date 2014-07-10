.class public Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "MusicViewWild.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MusicViewWild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$IGetVisibilityAlbum;,
        Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MSG_GET_ALBUM:I = 0xc9

.field private static final MSG_SET_ALBUM:I = 0xc8

.field private static mWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private final MAX_IMAGE_COUNT:I

.field private final SLOT_LOAD:I

.field lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private mAudioIds:[J

.field private mAudioInfoList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAysnHandler:Landroid/os/Handler;

.field private mBlue:Landroid/graphics/drawable/BitmapDrawable;

.field private mContext:Landroid/content/Context;

.field private mCurrentLoadingPos:I

.field private mEmptyView:Landroid/widget/ImageView;

.field mGalleryItemBackground:I

.field private mGreen:Landroid/graphics/drawable/BitmapDrawable;

.field private mHeight:I

.field private mIGetVisibleAlbum:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$IGetVisibilityAlbum;

.field private mInflater:Landroid/view/LayoutInflater;

.field public mIsFinshing:Z

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mOrange:Landroid/graphics/drawable/BitmapDrawable;

.field mRecycler:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 390
    const-class v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->$assertionsDisabled:Z

    .line 409
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    return-void

    .line 390
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;[J)V
    .locals 2
    .parameter "c"
    .parameter "audioid"

    .prologue
    const/4 v1, 0x7

    .line 453
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mIsFinshing:Z

    .line 397
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mCurrentLoadingPos:I

    .line 411
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mMainHandler:Landroid/os/Handler;

    .line 686
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mRecycler:Ljava/util/ArrayList;

    .line 730
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->SLOT_LOAD:I

    .line 731
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->MAX_IMAGE_COUNT:I

    .line 856
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mList:Ljava/util/ArrayList;

    .line 857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mEmptyView:Landroid/widget/ImageView;

    .line 880
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 454
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mContext:Landroid/content/Context;

    .line 455
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioIds:[J

    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 458
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 390
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 390
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelCurrentQueue()V
    .locals 5

    .prologue
    .line 719
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAysnHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 720
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 721
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 722
    .local v2, key:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    .line 723
    .local v1, info:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    iget-boolean v3, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mIsAyncGettingBitmap:Z

    if-eqz v3, :cond_0

    .line 724
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mIsAyncGettingBitmap:Z

    .line 725
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mRecycled:Z

    .line 720
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 728
    .end local v1           #info:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    .end local v2           #key:I
    :cond_1
    return-void
.end method

.method private checkedRecycleMoreThan(I)V
    .locals 4
    .parameter "limit"

    .prologue
    .line 733
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mIGetVisibleAlbum:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$IGetVisibilityAlbum;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 734
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v2, p1, :cond_2

    .line 743
    :cond_1
    return-void

    .line 737
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 738
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 739
    .local v1, key:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mIsAyncGettingBitmap:Z

    .line 740
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mRecycled:Z

    .line 741
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mRecycler:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 594
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAysnHandler:Landroid/os/Handler;

    .line 595
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mBlue:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 596
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mOrange:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 597
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mGreen:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 598
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mBlue:Landroid/graphics/drawable/BitmapDrawable;

    .line 599
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mOrange:Landroid/graphics/drawable/BitmapDrawable;

    .line 600
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mGreen:Landroid/graphics/drawable/BitmapDrawable;

    .line 601
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 602
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 603
    .local v2, key:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    .line 604
    .local v1, info:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    iget-object v3, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 605
    iget-object v3, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 601
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 608
    .end local v1           #info:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    .end local v2           #key:I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 610
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mRecycler:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 616
    return-void
.end method

.method private createEmptyView()Landroid/widget/ImageView;
    .locals 4

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mEmptyView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 860
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mEmptyView:Landroid/widget/ImageView;

    .line 861
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mEmptyView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/GalleryWidget$LayoutParams;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mWidth:I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/GalleryWidget$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 862
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mEmptyView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mEmptyView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createImageView(I)Landroid/widget/ImageView;
    .locals 6
    .parameter "viewIndex"

    .prologue
    .line 868
    rem-int/lit8 v1, p1, 0x7

    .line 869
    .local v1, index:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 870
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_0

    .line 871
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 872
    .local v2, view:Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/GalleryWidget$LayoutParams;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mWidth:I

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/GalleryWidget$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 874
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 877
    .end local v0           #i:I
    .end local v2           #view:Landroid/widget/ImageView;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    return-object v3
.end method

.method private getImageID(I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .parameter "position"

    .prologue
    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, res:Landroid/graphics/drawable/BitmapDrawable;
    rem-int/lit8 v1, p1, 0x3

    packed-switch v1, :pswitch_data_0

    .line 681
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mGreen:Landroid/graphics/drawable/BitmapDrawable;

    .line 684
    :goto_0
    return-object v0

    .line 672
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mBlue:Landroid/graphics/drawable/BitmapDrawable;

    .line 673
    goto :goto_0

    .line 675
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mGreen:Landroid/graphics/drawable/BitmapDrawable;

    .line 676
    goto :goto_0

    .line 678
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mOrange:Landroid/graphics/drawable/BitmapDrawable;

    .line 679
    goto :goto_0

    .line 670
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initDefaultBitmap()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mContext:Landroid/content/Context;

    const v1, 0x108039e

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$DataUtils;->getDefaultAlbum(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mBlue:Landroid/graphics/drawable/BitmapDrawable;

    .line 575
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mContext:Landroid/content/Context;

    const v1, 0x10803a0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$DataUtils;->getDefaultAlbum(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mOrange:Landroid/graphics/drawable/BitmapDrawable;

    .line 576
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mContext:Landroid/content/Context;

    const v1, 0x108039f

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$DataUtils;->getDefaultAlbum(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mGreen:Landroid/graphics/drawable/BitmapDrawable;

    .line 577
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mBlue:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mWidth:I

    .line 578
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mBlue:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mHeight:I

    .line 579
    return-void
.end method

.method private initWorkerThreadHandler()V
    .locals 2

    .prologue
    .line 555
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$2;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$2;-><init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAysnHandler:Landroid/os/Handler;

    .line 571
    return-void
.end method

.method private load(IZ)Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    .locals 12
    .parameter "position"
    .parameter "bRefresh"

    .prologue
    .line 760
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mCurrentLoadingPos:I

    .line 761
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mIsFinshing:Z

    if-eqz v9, :cond_0

    .line 763
    const/4 v1, 0x0

    .line 854
    :goto_0
    return-object v1

    .line 765
    :cond_0
    if-ltz p1, :cond_1

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioIds:[J

    array-length v9, v9

    if-lt p1, v9, :cond_2

    .line 766
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 768
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->cancelCurrentQueue()V

    .line 769
    const/16 v9, 0xf

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->checkedRecycleMoreThan(I)V

    .line 770
    move v2, p1

    .line 771
    .local v2, currentPos:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    .line 772
    .local v1, currentInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    if-nez v1, :cond_3

    .line 773
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    .end local v1           #currentInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    invoke-direct {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;-><init>()V

    .line 774
    .restart local v1       #currentInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioIds:[J

    aget-wide v9, v9, v2

    #calls: Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->bind(IJ)V
    invoke-static {v1, v2, v9, v10}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->access$500(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;IJ)V

    .line 775
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v9, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 778
    :cond_3
    iget-boolean v9, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mRecycled:Z

    if-eqz v9, :cond_4

    .line 779
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mRecycled:Z

    .line 782
    :cond_4
    iget-object v9, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v9, :cond_5

    iget-boolean v9, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mIsAyncGettingBitmap:Z

    if-nez v9, :cond_5

    .line 783
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mIsAyncGettingBitmap:Z

    .line 784
    new-instance v8, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    invoke-direct {v8, v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;-><init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;)V

    .line 785
    .local v8, sendedInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAysnHandler:Landroid/os/Handler;

    const/16 v10, 0xc9

    invoke-virtual {v9, v10, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 786
    .local v6, msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAysnHandler:Landroid/os/Handler;

    invoke-virtual {v9, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 790
    .end local v6           #msg:Landroid/os/Message;
    .end local v8           #sendedInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    :cond_5
    const/4 v4, 0x0

    .line 791
    .local v4, info:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    add-int/lit8 v9, p1, -0x7

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 792
    .local v0, begin:I
    add-int/lit8 v9, p1, 0x7

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioIds:[J

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 793
    .local v3, end:I
    add-int/lit8 v5, v2, -0x1

    .line 794
    .local v5, left:I
    add-int/lit8 v7, v2, 0x1

    .line 795
    .local v7, right:I
    :cond_6
    :goto_1
    if-le v7, v3, :cond_7

    if-lt v5, v0, :cond_f

    .line 796
    :cond_7
    if-lt v5, v0, :cond_a

    .line 797
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #info:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    check-cast v4, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    .line 798
    .restart local v4       #info:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    if-nez v4, :cond_8

    .line 799
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    .end local v4           #info:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    invoke-direct {v4}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;-><init>()V

    .line 800
    .restart local v4       #info:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioIds:[J

    aget-wide v9, v9, v5

    #calls: Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->bind(IJ)V
    invoke-static {v4, v5, v9, v10}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->access$500(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;IJ)V

    .line 801
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v9, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 805
    :cond_8
    iget-boolean v9, v4, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mRecycled:Z

    if-eqz v9, :cond_9

    .line 806
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mRecycled:Z

    .line 809
    :cond_9
    iget-object v9, v4, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v9, :cond_a

    iget-boolean v9, v4, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mIsAyncGettingBitmap:Z

    if-nez v9, :cond_a

    .line 810
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mIsAyncGettingBitmap:Z

    .line 812
    new-instance v8, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    invoke-direct {v8, v4}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;-><init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;)V

    .line 813
    .restart local v8       #sendedInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAysnHandler:Landroid/os/Handler;

    const/16 v10, 0xc9

    invoke-virtual {v9, v10, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 815
    .restart local v6       #msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAysnHandler:Landroid/os/Handler;

    invoke-virtual {v9, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 819
    .end local v6           #msg:Landroid/os/Message;
    .end local v8           #sendedInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    :cond_a
    if-gt v7, v3, :cond_d

    .line 820
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #info:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    check-cast v4, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    .line 821
    .restart local v4       #info:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    if-nez v4, :cond_b

    .line 822
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    .end local v4           #info:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    invoke-direct {v4}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;-><init>()V

    .line 823
    .restart local v4       #info:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioIds:[J

    aget-wide v9, v9, v7

    #calls: Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->bind(IJ)V
    invoke-static {v4, v7, v9, v10}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->access$500(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;IJ)V

    .line 824
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v9, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 828
    :cond_b
    iget-boolean v9, v4, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mRecycled:Z

    if-eqz v9, :cond_c

    .line 829
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mRecycled:Z

    .line 832
    :cond_c
    iget-object v9, v4, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v9, :cond_d

    iget-boolean v9, v4, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mIsAyncGettingBitmap:Z

    if-nez v9, :cond_d

    .line 833
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mIsAyncGettingBitmap:Z

    .line 834
    new-instance v8, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    invoke-direct {v8, v4}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;-><init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;)V

    .line 835
    .restart local v8       #sendedInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAysnHandler:Landroid/os/Handler;

    const/16 v10, 0xc9

    invoke-virtual {v9, v10, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 837
    .restart local v6       #msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAysnHandler:Landroid/os/Handler;

    invoke-virtual {v9, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 840
    .end local v6           #msg:Landroid/os/Message;
    .end local v8           #sendedInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    :cond_d
    if-gt v7, v3, :cond_e

    .line 841
    add-int/lit8 v7, v7, 0x1

    .line 843
    :cond_e
    if-lt v5, v0, :cond_6

    .line 844
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1

    .line 847
    :cond_f
    if-eqz p2, :cond_10

    .line 848
    new-instance v8, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    invoke-direct {v8}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;-><init>()V

    .line 849
    .restart local v8       #sendedInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAysnHandler:Landroid/os/Handler;

    const/16 v10, 0xc9

    invoke-virtual {v9, v10, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 851
    .restart local v6       #msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAysnHandler:Landroid/os/Handler;

    invoke-virtual {v9, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 853
    .end local v6           #msg:Landroid/os/Message;
    .end local v8           #sendedInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->recycle()V

    goto/16 :goto_0
.end method

.method private recycle()V
    .locals 4

    .prologue
    .line 746
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mRecycler:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 747
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mRecycler:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 748
    .local v2, key:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    .line 749
    .local v1, info:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mRecycled:Z

    if-eqz v3, :cond_0

    .line 750
    iget-object v3, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 751
    iget-object v3, v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 752
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 746
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    .end local v1           #info:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    .end local v2           #key:I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mRecycler:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 757
    return-void
.end method

.method private startWorkerThread()V
    .locals 3

    .prologue
    .line 543
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 544
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "play"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    .line 545
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    goto :goto_0
.end method

.method private stopWorkerThread()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAysnHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 591
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 646
    const-string v0, "MusicViewWild"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 648
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioIds:[J

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 658
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 664
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 882
    move-object v1, p2

    check-cast v1, Landroid/widget/ImageView;

    .line 883
    .local v1, view:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mAudioInfoList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    .line 884
    .local v0, info:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
    if-ltz p1, :cond_0

    .line 885
    if-nez v1, :cond_0

    .line 886
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->createImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    .line 889
    :cond_0
    if-nez v1, :cond_1

    .line 890
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->createEmptyView()Landroid/widget/ImageView;

    move-result-object v1

    .line 892
    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    .line 893
    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 897
    :goto_0
    return-object v1

    .line 895
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->getImageID(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public loadSelectionImage(IZ)V
    .locals 0
    .parameter "slectPos"
    .parameter "bRefresh"

    .prologue
    .line 917
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->load(IZ)Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    .line 918
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 632
    const-string v0, "ImageAdapter"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mIsFinshing:Z

    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->notifyDataSetChanged()V

    .line 635
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mIsFinshing:Z

    .line 636
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->startWorkerThread()V

    .line 637
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->initWorkerThreadHandler()V

    .line 638
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->initDefaultBitmap()V

    .line 639
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mCurrentLoadingPos:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->load(IZ)Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    .line 641
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 620
    const-string v0, "ImageAdapter"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    monitor-enter p0

    .line 622
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mIsFinshing:Z

    if-nez v0, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->stopWorkerThread()V

    .line 624
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->clear()V

    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mIsFinshing:Z

    .line 627
    :cond_0
    monitor-exit p0

    .line 628
    return-void

    .line 627
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFinishedMovement(I)V
    .locals 4
    .parameter "selectPos"

    .prologue
    const/4 v3, 0x1

    .line 921
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mIsFinshing:Z

    if-eqz v2, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    move v1, p1

    .line 926
    .local v1, position:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 929
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 930
    .local v0, pos:[I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mIGetVisibleAlbum:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$IGetVisibilityAlbum;

    invoke-interface {v2, v0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$IGetVisibilityAlbum;->getVisibleAlbum([I)V

    .line 931
    const/4 v2, 0x0

    aget v2, v0, v2

    if-lt v1, v2, :cond_0

    aget v2, v0, v3

    if-gt v1, v2, :cond_0

    .line 932
    invoke-direct {p0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->load(IZ)Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;

    goto :goto_0
.end method

.method public setIGetVisibilityAlbum(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$IGetVisibilityAlbum;)V
    .locals 0
    .parameter "gallery"

    .prologue
    .line 909
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->mIGetVisibleAlbum:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$IGetVisibilityAlbum;

    .line 910
    return-void
.end method
