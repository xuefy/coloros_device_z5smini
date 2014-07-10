.class public Lcom/android/internal/telephony/NumberAttributionTo$AttributionTo;
.super Ljava/lang/Object;
.source "NumberAttributionTo.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NumberAttributionTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttributionTo"
.end annotation


# static fields
.field public static final CITY:Ljava/lang/String; = "city"

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri; = null

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.studio.android.numattributionto"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.studio.android.numattributionto"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final NUMBER:Ljava/lang/String; = "num"

.field private static final QUERY_ATTRIBUTION_IN_LOCAL_TOKEN:I = 0x3e8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "content://numattribution_to/attributionto"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/NumberAttributionTo$AttributionTo;->CONTENT_URI:Landroid/net/Uri;

    .line 49
    const-string v0, "content://numattribution_to/attributionto/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/NumberAttributionTo$AttributionTo;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startQuery(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncQueryListener;)Lcom/android/internal/telephony/AsyncHandleContentResolver;
    .locals 9
    .parameter "context"
    .parameter "number"
    .parameter "listener"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 85
    const/16 v0, 0x3e8

    sget-object v3, Lcom/android/internal/telephony/NumberAttributionTo$AttributionTo;->CONTENT_FILTER_URI:Landroid/net/Uri;

    new-array v4, v6, [Ljava/lang/String;

    const-string v2, "city"

    aput-object v2, v4, v5

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v5

    move-object v2, p0

    move-object v5, v1

    move-object v7, v1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/android/internal/telephony/AsyncHandleContentResolver;->startQuery(ILjava/lang/Object;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/AsyncHandleContentResolver$AsyncQueryListener;)Lcom/android/internal/telephony/AsyncHandleContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static syncQuery(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 95
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/NumberAttributionTo$AttributionTo;->CONTENT_FILTER_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v4, "city"

    aput-object v4, v2, v5

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v5

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0
.end method
