.class public final Landroid/motion/Motion;
.super Ljava/lang/Object;
.source "Motion.java"


# static fields
.field public static final MOTION_DALAY_FASTEST:I = 0x0

.field public static final MOTION_DALAY_GAME:I = 0x1

.field public static final MOTION_DALAY_NORMAL:I = 0x3

.field public static final MOTION_DALAY_UI:I = 0x2

.field public static final NAME_LEANSCAN:Ljava/lang/String; = "motion_leanscan"

.field public static final NAME_PALMREJECTION:Ljava/lang/String; = "motion_palmRejection"

.field public static final NAME_PICKANSWER:Ljava/lang/String; = "motion_pickanswer"

.field public static final NAME_PICKUP:Ljava/lang/String; = "motion_pickup"

.field public static final NAME_POCKETMOD:Ljava/lang/String; = "motion_pocketmod"

.field public static final NAME_RLSHAKE:Ljava/lang/String; = "motion_rlshake"

.field public static final NAME_SHAKE:Ljava/lang/String; = "motion_shake"

.field public static final NAME_TURNOVER:Ljava/lang/String; = "motion_turnover"

.field public static final TYPE_LEANSCAN:I = 0x4

.field public static final TYPE_PALMREJECTION:I = 0x7

.field public static final TYPE_PICKANSWER:I = 0x3

.field public static final TYPE_PICKUP:I = 0x2

.field public static final TYPE_POCKETMOD:I = 0x5

.field public static final TYPE_RLSHAKE:I = 0x6

.field public static final TYPE_SHAKE:I = 0x1

.field public static final TYPE_TURNOVER:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMotionNameByType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, name:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 74
    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    const-string/jumbo v0, "motion_turnover"

    .line 49
    goto :goto_0

    .line 51
    :pswitch_1
    const-string/jumbo v0, "motion_shake"

    .line 52
    goto :goto_0

    .line 54
    :pswitch_2
    const-string/jumbo v0, "motion_pickup"

    .line 55
    goto :goto_0

    .line 57
    :pswitch_3
    const-string/jumbo v0, "motion_pocketmod"

    .line 58
    goto :goto_0

    .line 60
    :pswitch_4
    const-string/jumbo v0, "motion_leanscan"

    .line 61
    goto :goto_0

    .line 63
    :pswitch_5
    const-string/jumbo v0, "motion_pickanswer"

    .line 64
    goto :goto_0

    .line 66
    :pswitch_6
    const-string/jumbo v0, "motion_rlshake"

    .line 67
    goto :goto_0

    .line 69
    :pswitch_7
    const-string/jumbo v0, "motion_palmRejection"

    .line 70
    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getMotionTypeByName(Ljava/lang/String;)I
    .locals 2
    .parameter "typeName"

    .prologue
    .line 83
    const/4 v0, -0x1

    .line 84
    .local v0, type:I
    const-string/jumbo v1, "motion_turnover"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    const/4 v0, 0x0

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    const-string/jumbo v1, "motion_shake"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    :cond_2
    const-string/jumbo v1, "motion_pickup"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    const/4 v0, 0x2

    goto :goto_0

    .line 90
    :cond_3
    const-string/jumbo v1, "motion_pocketmod"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    const/4 v0, 0x5

    goto :goto_0

    .line 92
    :cond_4
    const-string/jumbo v1, "motion_leanscan"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 93
    const/4 v0, 0x4

    goto :goto_0

    .line 94
    :cond_5
    const-string/jumbo v1, "motion_pickanswer"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 95
    const/4 v0, 0x3

    goto :goto_0

    .line 96
    :cond_6
    const-string/jumbo v1, "motion_rlshake"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 97
    const/4 v0, 0x6

    goto :goto_0

    .line 98
    :cond_7
    const-string/jumbo v1, "motion_palmRejection"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const/4 v0, 0x7

    goto :goto_0
.end method
