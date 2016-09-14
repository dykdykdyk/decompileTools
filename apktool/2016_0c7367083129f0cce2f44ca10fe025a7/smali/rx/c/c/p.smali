.class public final Lrx/c/c/p;
.super Lrx/m;
.source "ImmediateScheduler.java"


# static fields
.field public static final b:Lrx/c/c/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lrx/c/c/p;

    invoke-direct {v0}, Lrx/c/c/p;-><init>()V

    sput-object v0, Lrx/c/c/p;->b:Lrx/c/c/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lrx/m;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public final createWorker()Lrx/n;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lrx/c/c/q;

    invoke-direct {v0, p0}, Lrx/c/c/q;-><init>(Lrx/c/c/p;)V

    return-object v0
.end method
