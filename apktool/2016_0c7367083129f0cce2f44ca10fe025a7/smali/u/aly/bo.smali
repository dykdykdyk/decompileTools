.class public Lu/aly/bo;
.super Lu/aly/bv;
.source "TApplicationException.java"


# static fields
.field private static final b:Lu/aly/du;

.field private static final c:Lu/aly/dn;

.field private static final d:Lu/aly/dn;


# instance fields
.field protected a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lu/aly/du;

    const-string v1, "TApplicationException"

    invoke-direct {v0, v1}, Lu/aly/du;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bo;->b:Lu/aly/du;

    .line 35
    new-instance v0, Lu/aly/dn;

    const-string v1, "message"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bo;->c:Lu/aly/dn;

    .line 36
    new-instance v0, Lu/aly/dn;

    const-string v1, "type"

    const/16 v2, 0x8

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bo;->d:Lu/aly/dn;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lu/aly/bv;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lu/aly/bo;->a:I

    .line 53
    return-void
.end method
