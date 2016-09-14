.class public interface abstract Lokhttp3/w;
.super Ljava/lang/Object;
.source "Dns.java"


# static fields
.field public static final a:Lokhttp3/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lokhttp3/x;

    invoke-direct {v0}, Lokhttp3/x;-><init>()V

    sput-object v0, Lokhttp3/w;->a:Lokhttp3/w;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
