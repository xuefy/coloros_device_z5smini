.class public Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;
.super Ljava/lang/Object;
.source "MusicViewWild.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "albumInfo"
.end annotation


# instance fields
.field mAudioId:J

.field mIsAyncGettingBitmap:Z

.field mRecycled:Z

.field malbum:Landroid/graphics/drawable/BitmapDrawable;

.field position:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 689
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 704
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mIsAyncGettingBitmap:Z

    .line 707
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->position:I

    .line 710
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    .line 713
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mAudioId:J

    .line 715
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mRecycled:Z

    .line 689
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;)V
    .locals 3
    .parameter "aInfo"

    .prologue
    const/4 v2, 0x0

    .line 690
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 704
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mIsAyncGettingBitmap:Z

    .line 707
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->position:I

    .line 710
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    .line 713
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mAudioId:J

    .line 715
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mRecycled:Z

    .line 691
    iget-boolean v0, p1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mIsAyncGettingBitmap:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mIsAyncGettingBitmap:Z

    .line 692
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->position:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->position:I

    .line 693
    iget-object v0, p1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->malbum:Landroid/graphics/drawable/BitmapDrawable;

    .line 694
    iget-wide v0, p1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mAudioId:J

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mAudioId:J

    .line 695
    iget-boolean v0, p1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mRecycled:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mRecycled:Z

    .line 696
    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 688
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->bind(IJ)V

    return-void
.end method

.method private bind(IJ)V
    .locals 0
    .parameter "pos"
    .parameter "audioId"

    .prologue
    .line 699
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->position:I

    .line 700
    iput-wide p2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$albumInfo;->mAudioId:J

    .line 701
    return-void
.end method
