.class public Lcom/nut/blehunter/entity/UnhandledFriend;
.super Ljava/lang/Object;
.source "UnhandledFriend.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nut/blehunter/entity/UnhandledFriend;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "create_time"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uuid"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field

.field public d:Lcom/nut/blehunter/entity/UnhandledFriend$Sponsor;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sponsor"
    .end annotation
.end field

.field public e:Lcom/nut/blehunter/entity/UnhandledFriend$Receiver;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "receiver"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/nut/blehunter/entity/ac;

    invoke-direct {v0}, Lcom/nut/blehunter/entity/ac;-><init>()V

    sput-object v0, Lcom/nut/blehunter/entity/UnhandledFriend;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nut/blehunter/entity/UnhandledFriend;->a:J

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/UnhandledFriend;->b:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/UnhandledFriend;->c:Ljava/lang/String;

    .line 134
    const-class v0, Lcom/nut/blehunter/entity/UnhandledFriend$Sponsor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/UnhandledFriend$Sponsor;

    iput-object v0, p0, Lcom/nut/blehunter/entity/UnhandledFriend;->d:Lcom/nut/blehunter/entity/UnhandledFriend$Sponsor;

    .line 135
    const-class v0, Lcom/nut/blehunter/entity/UnhandledFriend$Receiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/UnhandledFriend$Receiver;

    iput-object v0, p0, Lcom/nut/blehunter/entity/UnhandledFriend;->e:Lcom/nut/blehunter/entity/UnhandledFriend$Receiver;

    .line 136
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/nut/blehunter/entity/UnhandledFriend;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    iget-object v0, p0, Lcom/nut/blehunter/entity/UnhandledFriend;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/nut/blehunter/entity/UnhandledFriend;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/nut/blehunter/entity/UnhandledFriend;->d:Lcom/nut/blehunter/entity/UnhandledFriend$Sponsor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 124
    iget-object v0, p0, Lcom/nut/blehunter/entity/UnhandledFriend;->e:Lcom/nut/blehunter/entity/UnhandledFriend$Receiver;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 125
    return-void
.end method
