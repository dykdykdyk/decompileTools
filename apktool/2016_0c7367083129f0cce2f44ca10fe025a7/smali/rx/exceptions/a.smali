.class final Lrx/exceptions/a;
.super Ljava/lang/RuntimeException;
.source "CompositeException.java"


# static fields
.field static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    const-string v0, "Chain of Causes for CompositeException In Order Received =>"

    sput-object v0, Lrx/exceptions/a;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lrx/exceptions/a;->a:Ljava/lang/String;

    return-object v0
.end method
