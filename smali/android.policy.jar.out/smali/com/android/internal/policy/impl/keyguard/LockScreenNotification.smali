.class public Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;
.super Ljava/lang/Object;
.source "LockScreenNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public baseIntent:Landroid/app/PendingIntent;

.field public final icon:I

.field public final id:I

.field public final pkg:Ljava/lang/String;

.field public final text:Ljava/lang/String;

.field public when:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->pkg:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->id:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->icon:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->text:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->baseIntent:Landroid/app/PendingIntent;

    .line 66
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->when:J

    .line 67
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->baseIntent:Landroid/app/PendingIntent;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2
    .parameter "pkg"
    .parameter "id"
    .parameter "icon"
    .parameter "text"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->pkg:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->id:I

    .line 37
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->icon:I

    .line 38
    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->text:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->baseIntent:Landroid/app/PendingIntent;

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->when:J

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Landroid/app/PendingIntent;J)V
    .locals 1
    .parameter "pkg"
    .parameter "id"
    .parameter "icon"
    .parameter "text"
    .parameter "contentIntent"
    .parameter "when"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->pkg:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->id:I

    .line 49
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->icon:I

    .line 50
    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->text:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->baseIntent:Landroid/app/PendingIntent;

    .line 52
    iput-wide p6, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->when:J

    .line 53
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;
    .locals 8

    .prologue
    .line 95
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->pkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->id:I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->icon:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->text:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->baseIntent:Landroid/app/PendingIntent;

    iget-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->when:J

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;-><init>(Ljava/lang/String;IILjava/lang/String;Landroid/app/PendingIntent;J)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->clone()Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LockScreenNotifications(pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " baseIntent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->baseIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->when:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->baseIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->baseIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 90
    :goto_1
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->when:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    return-void

    .line 82
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
