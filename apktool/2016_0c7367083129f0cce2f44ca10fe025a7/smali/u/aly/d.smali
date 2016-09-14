.class public final Lu/aly/d;
.super Lu/aly/fc;
.source "UUIDTracker.java"


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    const-string v0, "idfa"

    invoke-direct {p0, v0}, Lu/aly/fc;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lu/aly/d;->d:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method
