.class public final Lcom/nut/blehunter/provider/n;
.super Lcom/nut/blehunter/provider/a;
.source "SafeRegionDataHelper.java"


# static fields
.field public static final b:[Ljava/lang/String;

.field private static c:Lcom/nut/blehunter/provider/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "uuid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "safe_region_info"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nut/blehunter/provider/n;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/nut/blehunter/provider/a;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/nut/blehunter/entity/SafeRegion;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 124
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "uuid"

    iget-object v2, p1, Lcom/nut/blehunter/entity/SafeRegion;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "name"

    iget-object v2, p1, Lcom/nut/blehunter/entity/SafeRegion;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "safe_region_info"

    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-object v0
.end method

.method public static a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/SafeRegion;
    .locals 2

    .prologue
    .line 114
    const-string v0, "safe_region_info"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    const-class v1, Lcom/nut/blehunter/entity/SafeRegion;

    .line 1049
    invoke-static {v0, v1}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    check-cast v0, Lcom/nut/blehunter/entity/SafeRegion;

    .line 119
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Lcom/nut/blehunter/entity/SafeRegion;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 53
    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    sget-object v2, Lcom/nut/blehunter/provider/n;->b:[Ljava/lang/String;

    const-string v3, "user_id = ? AND uuid = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p1, v4, v1

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/nut/blehunter/provider/n;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_0

    .line 66
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    invoke-static {v1}, Lcom/nut/blehunter/provider/n;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/SafeRegion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 70
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static declared-synchronized b()Lcom/nut/blehunter/provider/n;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lcom/nut/blehunter/provider/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nut/blehunter/provider/n;->c:Lcom/nut/blehunter/provider/n;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/nut/blehunter/provider/n;

    invoke-direct {v0}, Lcom/nut/blehunter/provider/n;-><init>()V

    sput-object v0, Lcom/nut/blehunter/provider/n;->c:Lcom/nut/blehunter/provider/n;

    .line 33
    :cond_0
    sget-object v0, Lcom/nut/blehunter/provider/n;->c:Lcom/nut/blehunter/provider/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/nut/blehunter/provider/g;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public final a(Lcom/nut/blehunter/entity/SafeRegion;)V
    .locals 5

    .prologue
    .line 86
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v1, p1, Lcom/nut/blehunter/entity/SafeRegion;->e:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nut/blehunter/provider/n;->b(Ljava/lang/String;)Lcom/nut/blehunter/entity/SafeRegion;

    move-result-object v1

    .line 91
    if-nez v1, :cond_1

    .line 92
    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/nut/blehunter/provider/n;->a(Ljava/lang/String;Lcom/nut/blehunter/entity/SafeRegion;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/provider/n;->a(Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 94
    :cond_1
    iget-object v1, v0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/nut/blehunter/provider/n;->a(Ljava/lang/String;Lcom/nut/blehunter/entity/SafeRegion;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "user_id = ? AND uuid = ? "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p1, Lcom/nut/blehunter/entity/SafeRegion;->e:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/nut/blehunter/provider/n;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 99
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 100
    if-nez v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const-string v1, "user_id = ? AND uuid = ? "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/provider/n;->a(Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/SafeRegion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/SafeRegion;

    .line 80
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/provider/n;->a(Lcom/nut/blehunter/entity/SafeRegion;)V

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0, v0}, Lcom/nut/blehunter/provider/n;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 111
    return-void
.end method
