.class public Lcom/nut/blehunter/entity/Nut;
.super Ljava/lang/Object;
.source "Nut.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nut/blehunter/entity/Nut;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "articleShares"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/ShareUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public B:Lcom/nut/blehunter/entity/User;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user"
    .end annotation
.end field

.field public C:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "battery_level"
    .end annotation
.end field

.field public D:I

.field public E:Z

.field public F:I

.field public G:I

.field public H:Ljava/lang/String;

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public a:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "createTime"
    .end annotation
.end field

.field public b:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updateTime"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "itemName"
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "devicePwMsb"
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "devicePwLsb"
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uuid"
    .end annotation
.end field

.field public g:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "longitude"
    .end annotation
.end field

.field public h:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latitude"
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "photoUrl"
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceId"
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tagId"
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field public n:I

.field public o:Lcom/nut/blehunter/entity/LosingRecord;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lastLosingRecord"
    .end annotation
.end field

.field public p:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceName"
    .end annotation
.end field

.field public q:Lcom/nut/blehunter/entity/WechatIdentifier;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wechatIdentifier"
    .end annotation
.end field

.field public r:Lcom/nut/blehunter/entity/PositionRecord;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lastPositionRecord"
    .end annotation
.end field

.field public s:I

.field public t:I

.field public u:I

.field public v:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firmware"
    .end annotation
.end field

.field public w:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hardware"
    .end annotation
.end field

.field public x:Ljava/lang/String;

.field public y:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mode"
    .end annotation
.end field

.field public z:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "articleConfigs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/NutConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 287
    new-instance v0, Lcom/nut/blehunter/entity/p;

    invoke-direct {v0}, Lcom/nut/blehunter/entity/p;-><init>()V

    sput-object v0, Lcom/nut/blehunter/entity/Nut;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->z:Ljava/util/List;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/entity/Nut;->E:Z

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->z:Ljava/util/List;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    .line 176
    iput-boolean v1, p0, Lcom/nut/blehunter/entity/Nut;->E:Z

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/entity/Nut;->I:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nut/blehunter/entity/Nut;->a:J

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nut/blehunter/entity/Nut;->b:J

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->d:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->e:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->f:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/nut/blehunter/entity/Nut;->g:D

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/nut/blehunter/entity/Nut;->h:D

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->i:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/entity/Nut;->p:I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/entity/Nut;->J:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/entity/Nut;->y:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->l:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/entity/Nut;->K:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/entity/Nut;->n:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->H:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    .line 216
    const-class v0, Lcom/nut/blehunter/entity/LosingRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/LosingRecord;

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->o:Lcom/nut/blehunter/entity/LosingRecord;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/entity/Nut;->F:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/entity/Nut;->G:I

    .line 219
    const-class v0, Lcom/nut/blehunter/entity/WechatIdentifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/WechatIdentifier;

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->q:Lcom/nut/blehunter/entity/WechatIdentifier;

    .line 220
    const-class v0, Lcom/nut/blehunter/entity/PositionRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/PositionRecord;

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->v:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->w:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->x:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/entity/Nut;->s:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/entity/Nut;->t:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/entity/Nut;->u:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/nut/blehunter/entity/Nut;->E:Z

    .line 228
    iget-object v0, p0, Lcom/nut/blehunter/entity/Nut;->z:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 229
    iget-object v0, p0, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/entity/Nut;->D:I

    .line 231
    const-class v0, Lcom/nut/blehunter/entity/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/User;

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->B:Lcom/nut/blehunter/entity/User;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/entity/Nut;->C:I

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/entity/Nut;->L:I

    .line 234
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 349
    iget v0, p0, Lcom/nut/blehunter/entity/Nut;->p:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nut/blehunter/entity/Nut;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 408
    iget v1, p0, Lcom/nut/blehunter/entity/Nut;->n:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/nut/blehunter/entity/Nut;->y:I

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/nut/blehunter/d/h;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/nut/blehunter/d/l;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/o;->e()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 354
    iget v1, p0, Lcom/nut/blehunter/entity/Nut;->p:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/nut/blehunter/entity/Nut;->p:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 359
    iget v0, p0, Lcom/nut/blehunter/entity/Nut;->p:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 363
    const v0, 0x7f02025e

    .line 364
    invoke-virtual {p0}, Lcom/nut/blehunter/entity/Nut;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    const v0, 0x7f0201fa

    .line 371
    :cond_0
    :goto_0
    return v0

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/entity/Nut;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    const v0, 0x7f02024a

    goto :goto_0

    .line 368
    :cond_2
    invoke-virtual {p0}, Lcom/nut/blehunter/entity/Nut;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    const v0, 0x7f020249

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 375
    const-string v0, ""

    .line 376
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v1

    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v1

    .line 377
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    if-eqz v2, :cond_0

    .line 378
    iget-object v0, v1, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    iget-object v0, v0, Lcom/nut/blehunter/entity/e;->d:Ljava/lang/String;

    .line 380
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 311
    instance-of v2, p1, Lcom/nut/blehunter/entity/Nut;

    if-nez v2, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    .line 315
    goto :goto_0

    .line 318
    :cond_2
    check-cast p1, Lcom/nut/blehunter/entity/Nut;

    .line 320
    iget-object v2, p1, Lcom/nut/blehunter/entity/Nut;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 321
    iget-object v2, p1, Lcom/nut/blehunter/entity/Nut;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/nut/blehunter/entity/Nut;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 322
    goto :goto_0

    .line 326
    :cond_3
    iget-object v2, p1, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 327
    iget-object v2, p1, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 328
    goto :goto_0

    .line 332
    :cond_4
    iget v2, p1, Lcom/nut/blehunter/entity/Nut;->I:I

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->I:I

    if-eqz v2, :cond_5

    .line 333
    iget v2, p1, Lcom/nut/blehunter/entity/Nut;->I:I

    iget v3, p0, Lcom/nut/blehunter/entity/Nut;->I:I

    if-ne v2, v3, :cond_5

    move v0, v1

    .line 334
    goto :goto_0

    .line 338
    :cond_5
    iget-object v2, p1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 339
    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/nut/blehunter/entity/Nut;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/entity/Nut;->i:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 393
    iget-boolean v1, p0, Lcom/nut/blehunter/entity/Nut;->E:Z

    if-nez v1, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v0

    .line 397
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v1

    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v1

    .line 398
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/nut/blehunter/entity/t;->d:Lcom/nut/blehunter/entity/j;

    if-eqz v2, :cond_0

    .line 399
    iget-object v1, v1, Lcom/nut/blehunter/entity/t;->d:Lcom/nut/blehunter/entity/j;

    iget v1, v1, Lcom/nut/blehunter/entity/j;->a:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 402
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x3e

    .line 304
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nut/blehunter/entity/Nut;->I:I

    add-int/2addr v0, v1

    .line 305
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 306
    return v0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 238
    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->I:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-wide v2, p0, Lcom/nut/blehunter/entity/Nut;->a:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 240
    iget-wide v2, p0, Lcom/nut/blehunter/entity/Nut;->b:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 241
    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->d:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->e:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->f:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-wide v2, p0, Lcom/nut/blehunter/entity/Nut;->g:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 246
    iget-wide v2, p0, Lcom/nut/blehunter/entity/Nut;->h:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 247
    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->i:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->J:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->y:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->l:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->K:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->n:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->H:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->o:Lcom/nut/blehunter/entity/LosingRecord;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 258
    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->F:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->G:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->q:Lcom/nut/blehunter/entity/WechatIdentifier;

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 261
    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 262
    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->v:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->w:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->x:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->s:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->t:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->u:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-boolean v2, p0, Lcom/nut/blehunter/entity/Nut;->E:Z

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget-object v0, p0, Lcom/nut/blehunter/entity/Nut;->z:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 270
    iget-object v0, p0, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 271
    iget v0, p0, Lcom/nut/blehunter/entity/Nut;->D:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget-object v0, p0, Lcom/nut/blehunter/entity/Nut;->B:Lcom/nut/blehunter/entity/User;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 273
    iget v0, p0, Lcom/nut/blehunter/entity/Nut;->C:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget v0, p0, Lcom/nut/blehunter/entity/Nut;->L:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    return-void

    :cond_0
    move v0, v1

    .line 268
    goto :goto_0
.end method
