.class public final Lcom/loc/t;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DB.java"


# instance fields
.field private a:Lcom/loc/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/loc/n;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p3, p0, Lcom/loc/t;->a:Lcom/loc/n;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/t;->a:Lcom/loc/n;

    invoke-interface {v0, p1}, Lcom/loc/n;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
