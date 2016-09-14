.class public final Lcom/nut/blehunter/provider/m;
.super Lcom/nut/blehunter/provider/a;
.source "ProductDataHelper.java"


# static fields
.field public static final b:[Ljava/lang/String;

.field private static c:Lcom/nut/blehunter/provider/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "product_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "customization"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "last_firmware"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "firmware_updated"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bind_path"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "call_device_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "valid_reconnection_rssi"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "radio_params"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "builtin"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "app_alert_delay"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "low_battery_level"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "shop_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nut/blehunter/provider/m;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/nut/blehunter/provider/a;-><init>()V

    return-void
.end method

.method private static a(Lcom/nut/blehunter/entity/t;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 220
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 221
    const-string v1, "product_id"

    iget v2, p0, Lcom/nut/blehunter/entity/t;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    iget-object v1, p0, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    if-eqz v1, :cond_0

    .line 224
    const-string v1, "customization"

    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    if-eqz v1, :cond_1

    .line 229
    const-string v1, "last_firmware"

    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/nut/blehunter/entity/t;->d:Lcom/nut/blehunter/entity/j;

    if-eqz v1, :cond_2

    .line 234
    const-string v1, "firmware_updated"

    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/nut/blehunter/entity/t;->d:Lcom/nut/blehunter/entity/j;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_2
    const-string v1, "bind_path"

    iget v2, p0, Lcom/nut/blehunter/entity/t;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const-string v1, "call_device_time"

    iget v2, p0, Lcom/nut/blehunter/entity/t;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string v1, "valid_reconnection_rssi"

    iget v2, p0, Lcom/nut/blehunter/entity/t;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    const-string v1, "radio_params"

    iget-object v2, p0, Lcom/nut/blehunter/entity/t;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "builtin"

    iget v2, p0, Lcom/nut/blehunter/entity/t;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    const-string v1, "app_alert_delay"

    iget v2, p0, Lcom/nut/blehunter/entity/t;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    const-string v1, "low_battery_level"

    iget v2, p0, Lcom/nut/blehunter/entity/t;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    const-string v1, "shop_type"

    iget v2, p0, Lcom/nut/blehunter/entity/t;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    return-object v0
.end method

.method public static declared-synchronized b()Lcom/nut/blehunter/provider/m;
    .locals 2

    .prologue
    .line 43
    const-class v1, Lcom/nut/blehunter/provider/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nut/blehunter/provider/m;->c:Lcom/nut/blehunter/provider/m;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/nut/blehunter/provider/m;

    invoke-direct {v0}, Lcom/nut/blehunter/provider/m;-><init>()V

    sput-object v0, Lcom/nut/blehunter/provider/m;->c:Lcom/nut/blehunter/provider/m;

    .line 46
    :cond_0
    sget-object v0, Lcom/nut/blehunter/provider/m;->c:Lcom/nut/blehunter/provider/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "product_id"

    aput-object v3, v2, v1

    .line 122
    const-string v3, "product_id = ?"

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/nut/blehunter/provider/m;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 125
    if-eqz v2, :cond_1

    .line 127
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_0

    .line 129
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 132
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 127
    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected final a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/nut/blehunter/provider/f;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public final a(I)Lcom/nut/blehunter/entity/t;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 73
    sget-object v1, Lcom/nut/blehunter/provider/m;->b:[Ljava/lang/String;

    const-string v2, "product_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/nut/blehunter/provider/m;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 76
    if-eqz v2, :cond_4

    .line 78
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2189
    new-instance v1, Lcom/nut/blehunter/entity/t;

    invoke-direct {v1}, Lcom/nut/blehunter/entity/t;-><init>()V

    .line 2190
    const-string v0, "product_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/nut/blehunter/entity/t;->a:I

    .line 2191
    const-string v0, "customization"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2193
    const-class v3, Lcom/nut/blehunter/entity/e;

    .line 3049
    invoke-static {v0, v3}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 2193
    check-cast v0, Lcom/nut/blehunter/entity/e;

    iput-object v0, v1, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    .line 2197
    :cond_0
    const-string v0, "last_firmware"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2199
    const-class v3, Lcom/nut/blehunter/entity/i;

    .line 4049
    invoke-static {v0, v3}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 2199
    check-cast v0, Lcom/nut/blehunter/entity/i;

    iput-object v0, v1, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    .line 2202
    :cond_1
    const-string v0, "firmware_updated"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2204
    const-class v3, Lcom/nut/blehunter/entity/j;

    .line 5049
    invoke-static {v0, v3}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 2204
    check-cast v0, Lcom/nut/blehunter/entity/j;

    iput-object v0, v1, Lcom/nut/blehunter/entity/t;->d:Lcom/nut/blehunter/entity/j;

    .line 2207
    :cond_2
    const-string v0, "bind_path"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/nut/blehunter/entity/t;->e:I

    .line 2208
    const-string v0, "call_device_time"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/nut/blehunter/entity/t;->f:I

    .line 2209
    const-string v0, "valid_reconnection_rssi"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/nut/blehunter/entity/t;->g:I

    .line 2211
    const-string v0, "radio_params"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nut/blehunter/entity/t;->h:Ljava/lang/String;

    .line 2212
    const-string v0, "builtin"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/nut/blehunter/entity/t;->i:I

    .line 2213
    const-string v0, "app_alert_delay"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/nut/blehunter/entity/t;->j:I

    .line 2214
    const-string v0, "low_battery_level"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/nut/blehunter/entity/t;->k:I

    .line 2215
    const-string v0, "shop_type"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/nut/blehunter/entity/t;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 82
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_4
    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final a(ILcom/nut/blehunter/entity/i;)V
    .locals 5

    .prologue
    .line 115
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 116
    const-string v1, "last_firmware"

    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "product_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/nut/blehunter/provider/m;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/t;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/t;

    .line 64
    iget v2, v0, Lcom/nut/blehunter/entity/t;->a:I

    invoke-direct {p0, v2}, Lcom/nut/blehunter/provider/m;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1184
    invoke-static {v0}, Lcom/nut/blehunter/provider/m;->a(Lcom/nut/blehunter/entity/t;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "product_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lcom/nut/blehunter/entity/t;->a:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lcom/nut/blehunter/provider/m;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 2180
    :cond_0
    invoke-static {v0}, Lcom/nut/blehunter/provider/m;->a(Lcom/nut/blehunter/entity/t;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/provider/m;->a(Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 70
    :cond_1
    return-void
.end method

.method public final a(Lcom/nut/blehunter/entity/Nut;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 137
    :try_start_0
    iget v1, p1, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v1

    .line 138
    iget-object v2, v1, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    iget-object v2, v2, Lcom/nut/blehunter/entity/i;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p1, Lcom/nut/blehunter/entity/Nut;->v:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 141
    iget-object v1, v1, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    iget-object v1, v1, Lcom/nut/blehunter/entity/i;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 144
    :catch_0
    move-exception v1

    const-string v2, "format firmware version exception"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, La/a/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b(I)I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 151
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "product_id"

    aput-object v1, v0, v4

    const-string v1, "call_device_time"

    aput-object v1, v0, v2

    const-string v1, "product_id = ?"

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nut/blehunter/provider/m;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 153
    const/16 v0, 0x23

    .line 154
    if-eqz v1, :cond_1

    .line 156
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const-string v0, "call_device_time"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 160
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_1
    return v0

    .line 160
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 55
    sget-object v1, Lcom/nut/blehunter/provider/m;->b:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/nut/blehunter/provider/m;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
