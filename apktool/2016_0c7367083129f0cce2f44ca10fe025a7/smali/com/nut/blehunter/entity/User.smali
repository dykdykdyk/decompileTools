.class public Lcom/nut/blehunter/entity/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nut/blehunter/entity/User;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uuid"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public c:Lcom/nut/blehunter/entity/Email;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field public d:Lcom/nut/blehunter/entity/Mobile;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobile"
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatar_url"
    .end annotation
.end field

.field public f:Lcom/nut/blehunter/entity/Wechat;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wechat"
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_pw_msb"
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_pw_lsb"
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_token"
    .end annotation
.end field

.field public j:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gender"
    .end annotation
.end field

.field public k:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_time"
    .end annotation
.end field

.field public l:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mute"
    .end annotation
.end field

.field public m:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "alarm_time"
    .end annotation
.end field

.field public n:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "safe_region_android"
    .end annotation
.end field

.field public o:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "safe_time"
    .end annotation
.end field

.field public p:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "delay_alarm"
    .end annotation
.end field

.field public q:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unread_message_count"
    .end annotation
.end field

.field public r:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "position_status"
    .end annotation
.end field

.field public s:Lcom/nut/blehunter/entity/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/nut/blehunter/entity/af;

    invoke-direct {v0}, Lcom/nut/blehunter/entity/af;-><init>()V

    sput-object v0, Lcom/nut/blehunter/entity/User;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0xf

    iput v0, p0, Lcom/nut/blehunter/entity/User;->p:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/User;->b:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/User;->e:Ljava/lang/String;

    .line 95
    return-void
.end method

.method private l()Lcom/nut/blehunter/entity/ak;
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/nut/blehunter/entity/User;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/nut/blehunter/entity/User;->d()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/entity/User;->n:Ljava/lang/String;

    const-class v1, Lcom/nut/blehunter/entity/ak;

    .line 1049
    invoke-static {v0, v1}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    check-cast v0, Lcom/nut/blehunter/entity/ak;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nut/blehunter/entity/User;->d:Lcom/nut/blehunter/entity/Mobile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/entity/User;->d:Lcom/nut/blehunter/entity/Mobile;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Mobile;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    const-string v0, ""

    .line 125
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/entity/User;->d:Lcom/nut/blehunter/entity/Mobile;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Mobile;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/nut/blehunter/entity/User;->l()Lcom/nut/blehunter/entity/ak;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    iput-object p1, v0, Lcom/nut/blehunter/entity/ak;->a:Ljava/lang/String;

    .line 210
    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/User;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/nut/blehunter/entity/User;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nut/blehunter/entity/User;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nut/blehunter/entity/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    :cond_1
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nut/blehunter/entity/User;->d:Lcom/nut/blehunter/entity/Mobile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/entity/User;->d:Lcom/nut/blehunter/entity/Mobile;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Mobile;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    const-string v0, ""

    .line 139
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/entity/User;->d:Lcom/nut/blehunter/entity/Mobile;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Mobile;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-object v0

    .line 218
    :cond_1
    invoke-direct {p0}, Lcom/nut/blehunter/entity/User;->l()Lcom/nut/blehunter/entity/ak;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_0

    .line 222
    const-string v2, "home"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    iget-object v0, v1, Lcom/nut/blehunter/entity/ak;->b:Ljava/util/ArrayList;

    goto :goto_0

    .line 224
    :cond_2
    const-string v2, "company"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 225
    iget-object v0, v1, Lcom/nut/blehunter/entity/ak;->c:Ljava/util/ArrayList;

    goto :goto_0

    .line 226
    :cond_3
    const-string v2, "other"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    iget-object v0, v1, Lcom/nut/blehunter/entity/ak;->d:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/nut/blehunter/entity/User;->c:Lcom/nut/blehunter/entity/Email;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/entity/User;->c:Lcom/nut/blehunter/entity/Email;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Email;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    const-string v0, ""

    .line 153
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/entity/User;->c:Lcom/nut/blehunter/entity/Email;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Email;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Lcom/nut/blehunter/entity/ak;

    invoke-direct {v0}, Lcom/nut/blehunter/entity/ak;-><init>()V

    .line 166
    const-string v1, "1"

    iput-object v1, v0, Lcom/nut/blehunter/entity/ak;->a:Ljava/lang/String;

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/nut/blehunter/entity/ak;->b:Ljava/util/ArrayList;

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/nut/blehunter/entity/ak;->c:Ljava/util/ArrayList;

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/nut/blehunter/entity/ak;->d:Ljava/util/ArrayList;

    .line 170
    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/User;->n:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/nut/blehunter/entity/User;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    :goto_0
    return v0

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/nut/blehunter/entity/User;->n:Ljava/lang/String;

    const-class v2, Lcom/nut/blehunter/entity/ak;

    .line 2049
    invoke-static {v1, v2}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    const/4 v0, 0x1

    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 193
    invoke-virtual {p0}, Lcom/nut/blehunter/entity/User;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v0

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/nut/blehunter/entity/User;->l()Lcom/nut/blehunter/entity/ak;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/nut/blehunter/entity/ak;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    const-string v0, "1"

    iget-object v1, v1, Lcom/nut/blehunter/entity/ak;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final g()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    const-string v1, "home"

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/entity/User;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 239
    :cond_0
    const-string v1, "company"

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/entity/User;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 241
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 243
    :cond_1
    const-string v1, "other"

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/entity/User;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 245
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 247
    :cond_2
    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/nut/blehunter/entity/User;->f:Lcom/nut/blehunter/entity/Wechat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/entity/User;->f:Lcom/nut/blehunter/entity/Wechat;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Wechat;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/nut/blehunter/entity/User;->c:Lcom/nut/blehunter/entity/Email;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/entity/User;->c:Lcom/nut/blehunter/entity/Email;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Email;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/nut/blehunter/entity/User;->c:Lcom/nut/blehunter/entity/Email;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/entity/User;->c:Lcom/nut/blehunter/entity/Email;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Email;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/entity/User;->c:Lcom/nut/blehunter/entity/Email;

    iget v0, v0, Lcom/nut/blehunter/entity/Email;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 263
    iget-object v1, p0, Lcom/nut/blehunter/entity/User;->c:Lcom/nut/blehunter/entity/Email;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nut/blehunter/entity/User;->c:Lcom/nut/blehunter/entity/Email;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Email;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nut/blehunter/entity/User;->c:Lcom/nut/blehunter/entity/Email;

    iget v1, v1, Lcom/nut/blehunter/entity/Email;->b:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/nut/blehunter/entity/User;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/nut/blehunter/entity/User;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return-void
.end method
