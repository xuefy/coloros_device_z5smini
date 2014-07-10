.class Lcom/android/internal/policy/impl/keyguard/MusicViewWild$DataUtils;
.super Ljava/lang/Object;
.source "MusicViewWild.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MusicViewWild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataUtils"
.end annotation


# static fields
.field private static final sArtworkUri:Landroid/net/Uri;

.field private static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static final sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$DataUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 78
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$DataUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 79
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$DataUtils;->sArtworkUri:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArtworkFromFile(Landroid/content/Context;JJII)Landroid/graphics/drawable/BitmapDrawable;
    .locals 11
    .parameter "context"
    .parameter "songid"
    .parameter "albumid"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, bm:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 113
    .local v0, art:[B
    const/4 v5, 0x0

    .line 114
    .local v5, path:Ljava/lang/String;
    const/4 v1, 0x0

    .line 115
    .local v1, bd:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v7, 0x4

    .line 117
    .local v7, reflectionGap:I
    const-wide/16 v9, 0x0

    cmp-long v9, p3, v9

    if-gez v9, :cond_0

    const-wide/16 v9, 0x0

    cmp-long v9, p1, v9

    if-gez v9, :cond_0

    .line 118
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Must specify an album or a song id"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 123
    :cond_0
    const-wide/16 v9, 0x0

    cmp-long v9, p3, v9

    if-gez v9, :cond_3

    .line 124
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://media/external/audio/media/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/albumart"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 126
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "r"

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 128
    .local v6, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v6, :cond_1

    .line 129
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 133
    .local v4, fd:Ljava/io/FileDescriptor;
    const/4 v9, 0x0

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$DataUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v4, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 212
    .end local v4           #fd:Ljava/io/FileDescriptor;
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 213
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v1       #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    move-object v9, v1

    .line 216
    .end local v6           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v8           #uri:Landroid/net/Uri;
    :goto_1
    return-object v9

    .line 138
    :cond_3
    :try_start_1
    sget-object v9, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$DataUtils;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v9, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 139
    .restart local v8       #uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "r"

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 141
    .restart local v6       #pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v6, :cond_1

    .line 142
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 146
    .restart local v4       #fd:Ljava/io/FileDescriptor;
    const/4 v9, 0x0

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$DataUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v4, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 150
    .end local v4           #fd:Ljava/io/FileDescriptor;
    .end local v6           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v8           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 151
    .local v3, ex:Ljava/lang/IllegalStateException;
    const/4 v9, 0x0

    goto :goto_1

    .line 152
    .end local v3           #ex:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    .line 153
    .local v3, ex:Ljava/io/FileNotFoundException;
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public static getDefaultAlbum(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "context"
    .parameter "resid"

    .prologue
    .line 220
    const/4 v2, 0x4

    .line 222
    .local v2, reflectionGap:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 261
    .local v1, originalImage:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 266
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    return-object v0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 85
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$DataUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "limit"

    .prologue
    const/4 v7, 0x0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 94
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 104
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .line 97
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    if-lez p6, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 101
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 103
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 104
    goto :goto_0
.end method
