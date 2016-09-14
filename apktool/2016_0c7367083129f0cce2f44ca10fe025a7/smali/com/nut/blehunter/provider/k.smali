.class public final Lcom/nut/blehunter/provider/k;
.super Lcom/nut/blehunter/provider/a;
.source "LocationDataHelper.java"


# static fields
.field public static final b:[Ljava/lang/String;

.field private static c:Lcom/nut/blehunter/provider/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "uuid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tag_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "source"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "find_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "find_address"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nut/blehunter/provider/k;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/nut/blehunter/provider/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/FindLocation;
    .locals 10

    .prologue
    .line 130
    new-instance v0, Lcom/nut/blehunter/entity/FindLocation;

    invoke-direct {v0}, Lcom/nut/blehunter/entity/FindLocation;-><init>()V

    .line 132
    :try_start_0
    const-string v1, "tag_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nut/blehunter/entity/FindLocation;->a:Ljava/lang/String;

    .line 133
    const-string v1, "find_address"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nut/blehunter/entity/FindLocation;->c:Ljava/lang/String;

    .line 134
    const-string v1, "uuid"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 135
    const-string v1, "source"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 136
    const-string v1, "longitude"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    .line 137
    const-string v1, "latitude"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    .line 138
    const-string v1, "find_time"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 139
    new-instance v1, Lcom/nut/blehunter/entity/Position;

    invoke-direct/range {v1 .. v7}, Lcom/nut/blehunter/entity/Position;-><init>(JDD)V

    iput-object v1, v0, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    .line 140
    iget-object v1, v0, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    iput-object v8, v1, Lcom/nut/blehunter/entity/Position;->a:Ljava/lang/String;

    .line 141
    iget-object v1, v0, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    iput v9, v1, Lcom/nut/blehunter/entity/Position;->b:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-object v0

    .line 144
    :catch_0
    move-exception v0

    const-string v1, "createLocationFromCursor Exception"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, La/a/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/nut/blehunter/entity/FindLocation;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 151
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 152
    const-string v1, "uuid"

    iget-object v2, p0, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Position;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "tag_id"

    iget-object v2, p0, Lcom/nut/blehunter/entity/FindLocation;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "longitude"

    iget-object v2, p0, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    iget-wide v2, v2, Lcom/nut/blehunter/entity/Position;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 155
    const-string v1, "latitude"

    iget-object v2, p0, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    iget-wide v2, v2, Lcom/nut/blehunter/entity/Position;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 156
    const-string v1, "find_time"

    iget-object v2, p0, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    iget-wide v2, v2, Lcom/nut/blehunter/entity/Position;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    const-string v1, "find_address"

    iget-object v2, p0, Lcom/nut/blehunter/entity/FindLocation;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "source"

    iget-object v2, p0, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    iget v2, v2, Lcom/nut/blehunter/entity/Position;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    return-object v0
.end method

.method public static declared-synchronized b()Lcom/nut/blehunter/provider/k;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/nut/blehunter/provider/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nut/blehunter/provider/k;->c:Lcom/nut/blehunter/provider/k;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/nut/blehunter/provider/k;

    invoke-direct {v0}, Lcom/nut/blehunter/provider/k;-><init>()V

    sput-object v0, Lcom/nut/blehunter/provider/k;->c:Lcom/nut/blehunter/provider/k;

    .line 34
    :cond_0
    sget-object v0, Lcom/nut/blehunter/provider/k;->c:Lcom/nut/blehunter/provider/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/nut/blehunter/provider/d;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public final a(Lcom/nut/blehunter/entity/FindLocation;)V
    .locals 5

    .prologue
    .line 107
    iget-object v0, p1, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Position;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/provider/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    invoke-static {p1}, Lcom/nut/blehunter/provider/k;->b(Lcom/nut/blehunter/entity/FindLocation;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "uuid = ? "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    iget-object v4, v4, Lcom/nut/blehunter/entity/Position;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/nut/blehunter/provider/k;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 2115
    :cond_0
    invoke-static {p1}, Lcom/nut/blehunter/provider/k;->b(Lcom/nut/blehunter/entity/FindLocation;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/provider/k;->a(Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v1

    .line 49
    const-string v3, "uuid = ? "

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v1

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/nut/blehunter/provider/k;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 51
    if-eqz v2, :cond_1

    .line 53
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_0

    .line 55
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 58
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 53
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)Lcom/nut/blehunter/entity/FindLocation;
    .locals 4

    .prologue
    .line 70
    sget-object v0, Lcom/nut/blehunter/provider/k;->b:[Ljava/lang/String;

    const-string v1, "tag_id = ? "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "find_time DESC"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nut/blehunter/provider/k;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 73
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {v1}, Lcom/nut/blehunter/provider/k;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/FindLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 79
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 81
    :goto_0
    return-object v0

    .line 79
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 81
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final c(Ljava/lang/String;)Lcom/nut/blehunter/entity/FindLocation;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 85
    sget-object v1, Lcom/nut/blehunter/provider/k;->b:[Ljava/lang/String;

    const-string v2, "uuid = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/nut/blehunter/provider/k;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 87
    if-eqz v2, :cond_0

    .line 89
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    invoke-static {v2}, Lcom/nut/blehunter/provider/k;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/FindLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 97
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 97
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    :try_start_1
    const-string v3, "getByUUID Exception"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, La/a/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 124
    .line 3062
    sget-object v0, Lcom/nut/blehunter/provider/k;->b:[Ljava/lang/String;

    const-string v2, "tag_id = ? "

    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v1

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/nut/blehunter/provider/k;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3064
    if-nez v2, :cond_1

    move v0, v1

    .line 3065
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 124
    if-lez v0, :cond_0

    .line 125
    const-string v0, "tag_id = ?"

    new-array v2, v5, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/nut/blehunter/provider/k;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    :cond_0
    return-void

    .line 3064
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method
