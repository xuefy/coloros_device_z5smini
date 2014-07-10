.class public final Landroid/provider/Telephony$ScheduleMessages;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/Telephony$ScheduleMessagesColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScheduleMessages"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final MESSAGES_URI:Landroid/net/Uri;

.field public static final NEW_URI:Landroid/net/Uri;

.field public static final SINGLE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2186
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "schedule"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$ScheduleMessages;->CONTENT_URI:Landroid/net/Uri;

    .line 2188
    sget-object v0, Landroid/provider/Telephony$ScheduleMessages;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "messages"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$ScheduleMessages;->MESSAGES_URI:Landroid/net/Uri;

    .line 2190
    sget-object v0, Landroid/provider/Telephony$ScheduleMessages;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "new"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$ScheduleMessages;->NEW_URI:Landroid/net/Uri;

    .line 2192
    sget-object v0, Landroid/provider/Telephony$ScheduleMessages;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "single"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$ScheduleMessages;->SINGLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2184
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
