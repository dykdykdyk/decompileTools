.class public abstract Lcom/nut/blehunter/provider/a;
.super Ljava/lang/Object;
.source "BaseDataHelper.java"


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/nut/blehunter/NutTrackerApplication;->a()Lcom/nut/blehunter/NutTrackerApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/NutTrackerApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/provider/a;->a:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nut/blehunter/provider/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/provider/a;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final a(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nut/blehunter/provider/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/provider/a;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final a([Landroid/content/ContentValues;)I
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nut/blehunter/provider/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/provider/a;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method protected final a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nut/blehunter/provider/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/provider/a;->a()Landroid/net/Uri;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()Landroid/net/Uri;
.end method

.method protected final a(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nut/blehunter/provider/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/provider/a;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
