.class Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;
.super Ljava/lang/Object;
.source "MusicViewWild.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MusicViewWild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MusicInfoBean"
.end annotation


# static fields
.field private static mSongNameColor:I


# instance fields
.field private duration:J

.field private mAlbum:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mAudioId:J

.field private mIndex:I

.field private mStatus:Z

.field private mTrack:Ljava/lang/String;

.field private position:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 360
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mSongNameColor:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 272
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mArtist:Ljava/lang/String;

    .line 275
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mAlbum:Ljava/lang/String;

    .line 276
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mTrack:Ljava/lang/String;

    .line 277
    iput-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->duration:J

    .line 278
    iput-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->position:J

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtiSt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Landroid/text/SpannableString;
    .locals 7

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x0

    .line 342
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mTrack:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mArtist:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 344
    const/4 v2, 0x0

    .line 357
    :goto_0
    return-object v2

    .line 346
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mTrack:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 347
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mTrack:Ljava/lang/String;

    .line 349
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mArtist:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 350
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mArtist:Ljava/lang/String;

    .line 352
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mTrack:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 353
    .local v1, pos:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mTrack:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, info:Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 355
    .local v2, showText:Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    sget v4, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mSongNameColor:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2, v3, v5, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 356
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3f8ccccd

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v2, v3, v5, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public getStatus()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mStatus:Z

    return v0
.end method

.method public getmIndex()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mIndex:I

    return v0
.end method

.method public setAlum(Ljava/lang/String;)V
    .locals 0
    .parameter "alum"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mAlbum:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "artist"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mArtist:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setSongNameColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 362
    sput p1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mSongNameColor:I

    .line 363
    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .parameter "isActive"

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mStatus:Z

    .line 333
    return-void
.end method

.method public setTrack(Ljava/lang/String;)V
    .locals 0
    .parameter "track"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mTrack:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setmAudioId(J)V
    .locals 0
    .parameter "mAudioId"

    .prologue
    .line 382
    iput-wide p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mAudioId:J

    .line 383
    return-void
.end method

.method public setmIndex(I)V
    .locals 0
    .parameter "mIndex"

    .prologue
    .line 288
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->mIndex:I

    .line 289
    return-void
.end method
