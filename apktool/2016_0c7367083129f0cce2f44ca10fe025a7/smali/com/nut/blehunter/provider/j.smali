.class public final Lcom/nut/blehunter/provider/j;
.super Lcom/nut/blehunter/provider/a;
.source "FriendDataHelper.java"


# static fields
.field public static final b:[Ljava/lang/String;

.field private static c:Lcom/nut/blehunter/provider/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "uuid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "friend_index"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "friend_info"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nut/blehunter/provider/j;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/nut/blehunter/provider/a;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/nut/blehunter/entity/Friend;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 162
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 163
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v1, "uuid"

    iget-object v2, p1, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "friend_index"

    iget v2, p1, Lcom/nut/blehunter/entity/Friend;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string v1, "friend_info"

    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-object v0
.end method

.method public static a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/Friend;
    .locals 2

    .prologue
    .line 154
    const-string v0, "friend_info"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const-class v1, Lcom/nut/blehunter/entity/Friend;

    .line 1049
    invoke-static {v0, v1}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 156
    check-cast v0, Lcom/nut/blehunter/entity/Friend;

    .line 158
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Lcom/nut/blehunter/entity/Friend;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 92
    if-nez v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    sget-object v2, Lcom/nut/blehunter/provider/j;->b:[Ljava/lang/String;

    const-string v3, "user_id = ? AND uuid = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p1, v4, v1

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/nut/blehunter/provider/j;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_0

    .line 105
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    invoke-static {v1}, Lcom/nut/blehunter/provider/j;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/Friend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 109
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static declared-synchronized b()Lcom/nut/blehunter/provider/j;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/nut/blehunter/provider/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nut/blehunter/provider/j;->c:Lcom/nut/blehunter/provider/j;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/nut/blehunter/provider/j;

    invoke-direct {v0}, Lcom/nut/blehunter/provider/j;-><init>()V

    sput-object v0, Lcom/nut/blehunter/provider/j;->c:Lcom/nut/blehunter/provider/j;

    .line 34
    :cond_0
    sget-object v0, Lcom/nut/blehunter/provider/j;->c:Lcom/nut/blehunter/provider/j;
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
    sget-object v0, Lcom/nut/blehunter/provider/c;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public final a(Lcom/nut/blehunter/entity/Friend;)V
    .locals 5

    .prologue
    .line 125
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 126
    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v1, p1, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nut/blehunter/provider/j;->b(Ljava/lang/String;)Lcom/nut/blehunter/entity/Friend;

    move-result-object v1

    .line 130
    if-nez v1, :cond_1

    .line 131
    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/nut/blehunter/provider/j;->a(Ljava/lang/String;Lcom/nut/blehunter/entity/Friend;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/provider/j;->a(Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 133
    :cond_1
    iget-object v1, v0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/nut/blehunter/provider/j;->a(Ljava/lang/String;Lcom/nut/blehunter/entity/Friend;)Landroid/content/ContentValues;

    move-result-object v1

    .line 134
    const-string v2, "user_id = ? AND uuid = ? "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p1, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/nut/blehunter/provider/j;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 139
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 140
    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const-string v1, "user_id = ? AND uuid = ? "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/provider/j;->a(Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Friend;

    .line 119
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/provider/j;->a(Lcom/nut/blehunter/entity/Friend;)V

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nut/blehunter/entity/Friend;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    .line 75
    :goto_0
    return v0

    .line 57
    :cond_1
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "uuid"

    aput-object v4, v3, v2

    const-string v4, "user_id = ?"

    new-array v5, v1, [Ljava/lang/String;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v0, v5, v2

    const-string v0, "friend_index ASC"

    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/nut/blehunter/provider/j;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 59
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    move v3, v2

    .line 62
    :goto_1
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    const-string v0, "uuid"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Friend;

    .line 65
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 71
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move v0, v1

    goto :goto_0

    .line 68
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 69
    goto :goto_1

    .line 71
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v2

    .line 75
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nut/blehunter/entity/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 83
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 84
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Friend;

    .line 85
    iput v1, v0, Lcom/nut/blehunter/entity/Friend;->d:I

    .line 86
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/provider/j;->a(Lcom/nut/blehunter/entity/Friend;)V

    .line 83
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final c()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 43
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v2

    .line 44
    if-nez v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "uuid"

    aput-object v4, v3, v1

    const-string v4, "user_id = ?"

    new-array v5, v0, [Ljava/lang/String;

    iget-object v2, v2, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v2, v5, v1

    const-string v2, "friend_index ASC"

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/nut/blehunter/provider/j;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 49
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, v0, v0}, Lcom/nut/blehunter/provider/j;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 151
    return-void
.end method
