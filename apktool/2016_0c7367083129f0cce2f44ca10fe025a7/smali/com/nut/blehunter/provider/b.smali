.class public final Lcom/nut/blehunter/provider/b;
.super Ljava/lang/Object;
.source "Data.java"


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "content://com.nutspace.app.blehunter.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/provider/b;->a:Landroid/net/Uri;

    return-void
.end method
