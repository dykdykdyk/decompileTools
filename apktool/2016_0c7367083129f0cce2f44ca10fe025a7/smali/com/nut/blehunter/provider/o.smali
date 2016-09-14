.class public final Lcom/nut/blehunter/provider/o;
.super Lcom/nut/blehunter/provider/a;
.source "UserDataHelper.java"


# static fields
.field public static final b:[Ljava/lang/String;

.field private static c:Lcom/nut/blehunter/provider/o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "uuid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "user_info"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nut/blehunter/provider/o;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/nut/blehunter/provider/a;-><init>()V

    return-void
.end method

.method private static a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/User;
    .locals 4

    .prologue
    .line 89
    const-string v0, "user_info"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    const-class v0, Lcom/nut/blehunter/entity/User;

    .line 1049
    invoke-static {v2, v0}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    check-cast v0, Lcom/nut/blehunter/entity/User;

    .line 92
    iget-object v1, v0, Lcom/nut/blehunter/entity/User;->o:Ljava/lang/String;

    const-class v3, Lcom/nut/blehunter/entity/aa;

    .line 2049
    invoke-static {v1, v3}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 92
    check-cast v1, Lcom/nut/blehunter/entity/aa;

    iput-object v1, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    .line 93
    iget-object v1, v0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/nut/blehunter/entity/User;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "accessToken"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nut/blehunter/entity/User;->i:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/nut/blehunter/entity/User;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :cond_1
    sget-object v1, Lcom/nut/blehunter/provider/o;->b:[Ljava/lang/String;

    const-string v2, "uuid = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/nut/blehunter/provider/o;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_0

    .line 64
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    invoke-static {v1}, Lcom/nut/blehunter/provider/o;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/User;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 68
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static b(Lcom/nut/blehunter/entity/User;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 107
    const-string v1, "uuid"

    iget-object v2, p0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "user_info"

    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-object v0
.end method

.method public static declared-synchronized b()Lcom/nut/blehunter/provider/o;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/nut/blehunter/provider/o;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nut/blehunter/provider/o;->c:Lcom/nut/blehunter/provider/o;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/nut/blehunter/provider/o;

    invoke-direct {v0}, Lcom/nut/blehunter/provider/o;-><init>()V

    sput-object v0, Lcom/nut/blehunter/provider/o;->c:Lcom/nut/blehunter/provider/o;

    .line 32
    :cond_0
    sget-object v0, Lcom/nut/blehunter/provider/o;->c:Lcom/nut/blehunter/provider/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/nut/blehunter/provider/h;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public final a(Lcom/nut/blehunter/entity/User;)V
    .locals 5

    .prologue
    .line 76
    iget-object v0, p1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/provider/o;->a(Ljava/lang/String;)Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 77
    if-nez v0, :cond_0

    .line 78
    invoke-static {p1}, Lcom/nut/blehunter/provider/o;->b(Lcom/nut/blehunter/entity/User;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/provider/o;->a(Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-static {p1}, Lcom/nut/blehunter/provider/o;->b(Lcom/nut/blehunter/entity/User;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "uuid = ? "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/nut/blehunter/provider/o;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final c()Lcom/nut/blehunter/entity/User;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 41
    .line 42
    sget-object v1, Lcom/nut/blehunter/provider/o;->b:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v0, v0}, Lcom/nut/blehunter/provider/o;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_1

    .line 45
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-static {v1}, Lcom/nut/blehunter/provider/o;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/User;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 49
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 53
    :cond_1
    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0, v0}, Lcom/nut/blehunter/provider/o;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 86
    return-void
.end method
