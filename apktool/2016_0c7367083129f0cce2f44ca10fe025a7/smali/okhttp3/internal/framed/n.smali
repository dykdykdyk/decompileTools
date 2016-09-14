.class public abstract Lokhttp3/internal/framed/n;
.super Ljava/lang/Object;
.source "FramedConnection.java"


# static fields
.field public static final m:Lokhttp3/internal/framed/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 899
    new-instance v0, Lokhttp3/internal/framed/o;

    invoke-direct {v0}, Lokhttp3/internal/framed/o;-><init>()V

    sput-object v0, Lokhttp3/internal/framed/n;->m:Lokhttp3/internal/framed/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/internal/framed/e;)V
    .locals 0

    .prologue
    .line 921
    return-void
.end method

.method public abstract a(Lokhttp3/internal/framed/t;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
