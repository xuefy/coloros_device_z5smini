.class public Lcom/android/internal/telephony/AsyncHandleContentResolver;
.super Ljava/lang/Object;
.source "AsyncHandleContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandlePoolException;,
        Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;,
        Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncDeleteListener;,
        Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncUpdateListener;,
        Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncInsertListener;,
        Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncQueryListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncHandleContentResolver"


# instance fields
.field private mHandler:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/AsyncHandleContentResolver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/telephony/AsyncHandleContentResolver;->release()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/AsyncHandleContentResolver;)Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver;->mHandler:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/AsyncHandleContentResolver;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;)Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver;->mHandler:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;

    return-object p1
.end method

.method private allocate(ILjava/lang/Object;Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncInsertListener;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "context"
    .parameter "uri"
    .parameter "initialValues"
    .parameter "listener"

    .prologue
    .line 221
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 222
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandlePoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandlePoolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/AsyncHandleContentResolver$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p6

    move v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/AsyncHandleContentResolver$2;-><init>(Lcom/android/internal/telephony/AsyncHandleContentResolver;Landroid/content/Context;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncInsertListener;ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/AsyncHandleContentResolver$2;->start()V

    .line 236
    return-void
.end method

.method private allocate(ILjava/lang/Object;Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncUpdateListener;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "context"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "listener"

    .prologue
    .line 241
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 242
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandlePoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandlePoolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/AsyncHandleContentResolver$3;

    move-object v1, p0

    move-object v2, p3

    move-object/from16 v3, p8

    move v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/AsyncHandleContentResolver$3;-><init>(Lcom/android/internal/telephony/AsyncHandleContentResolver;Landroid/content/Context;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncUpdateListener;ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/AsyncHandleContentResolver$3;->start()V

    .line 256
    return-void
.end method

.method private allocate(ILjava/lang/Object;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncDeleteListener;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "context"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "listener"

    .prologue
    .line 261
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 262
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandlePoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandlePoolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/AsyncHandleContentResolver$4;

    move-object v1, p0

    move-object v2, p3

    move-object/from16 v3, p7

    move v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/AsyncHandleContentResolver$4;-><init>(Lcom/android/internal/telephony/AsyncHandleContentResolver;Landroid/content/Context;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncDeleteListener;ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/AsyncHandleContentResolver$4;->start()V

    .line 276
    return-void
.end method

.method private allocate(ILjava/lang/Object;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncQueryListener;)V
    .locals 11
    .parameter "token"
    .parameter "cookie"
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"
    .parameter "listener"

    .prologue
    .line 201
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 202
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandlePoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandlePoolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;

    move-object v1, p0

    move-object v2, p3

    move-object/from16 v3, p9

    move v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;-><init>(Lcom/android/internal/telephony/AsyncHandleContentResolver;Landroid/content/Context;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncQueryListener;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/AsyncHandleContentResolver$1;->start()V

    .line 217
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 286
    const-string v0, "AsyncHandleContentResolver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private release()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver;->mHandler:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver;->mHandler:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;

    .line 284
    return-void
.end method

.method public static startDelete(ILjava/lang/Object;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncDeleteListener;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "context"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "listener"

    .prologue
    .line 100
    new-instance v0, Lcom/android/internal/telephony/AsyncHandleContentResolver;

    invoke-direct {v0}, Lcom/android/internal/telephony/AsyncHandleContentResolver;-><init>()V

    .local v0, c:Lcom/android/internal/telephony/AsyncHandleContentResolver;
    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 101
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/AsyncHandleContentResolver;->allocate(ILjava/lang/Object;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncDeleteListener;)V

    .line 102
    return-void
.end method

.method public static startInsert(ILjava/lang/Object;Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncInsertListener;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "context"
    .parameter "uri"
    .parameter "initialValues"
    .parameter "listener"

    .prologue
    .line 85
    new-instance v0, Lcom/android/internal/telephony/AsyncHandleContentResolver;

    invoke-direct {v0}, Lcom/android/internal/telephony/AsyncHandleContentResolver;-><init>()V

    .local v0, c:Lcom/android/internal/telephony/AsyncHandleContentResolver;
    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 86
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/AsyncHandleContentResolver;->allocate(ILjava/lang/Object;Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncInsertListener;)V

    .line 87
    return-void
.end method

.method public static startQuery(ILjava/lang/Object;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncQueryListener;)Lcom/android/internal/telephony/AsyncHandleContentResolver;
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"
    .parameter "listener"

    .prologue
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startQuery token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/AsyncHandleContentResolver;->log(Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/android/internal/telephony/AsyncHandleContentResolver;

    invoke-direct {v0}, Lcom/android/internal/telephony/AsyncHandleContentResolver;-><init>()V

    .local v0, c:Lcom/android/internal/telephony/AsyncHandleContentResolver;
    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 78
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/AsyncHandleContentResolver;->allocate(ILjava/lang/Object;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncQueryListener;)V

    .line 80
    return-object v0
.end method

.method public static startUpdate(ILjava/lang/Object;Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncUpdateListener;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "context"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "listener"

    .prologue
    .line 92
    new-instance v0, Lcom/android/internal/telephony/AsyncHandleContentResolver;

    invoke-direct {v0}, Lcom/android/internal/telephony/AsyncHandleContentResolver;-><init>()V

    .local v0, c:Lcom/android/internal/telephony/AsyncHandleContentResolver;
    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 93
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/AsyncHandleContentResolver;->allocate(ILjava/lang/Object;Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncUpdateListener;)V

    .line 95
    return-void
.end method


# virtual methods
.method public isFinal()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/AsyncHandleContentResolver;->mHandler:Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncHandle;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
