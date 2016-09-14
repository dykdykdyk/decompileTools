.class public final Lokhttp3/m;
.super Ljava/lang/Object;
.source "CipherSuite.java"


# static fields
.field public static final A:Lokhttp3/m;

.field public static final B:Lokhttp3/m;

.field public static final C:Lokhttp3/m;

.field public static final D:Lokhttp3/m;

.field public static final E:Lokhttp3/m;

.field public static final F:Lokhttp3/m;

.field public static final G:Lokhttp3/m;

.field public static final H:Lokhttp3/m;

.field public static final I:Lokhttp3/m;

.field public static final J:Lokhttp3/m;

.field public static final K:Lokhttp3/m;

.field public static final L:Lokhttp3/m;

.field public static final M:Lokhttp3/m;

.field public static final N:Lokhttp3/m;

.field public static final O:Lokhttp3/m;

.field public static final P:Lokhttp3/m;

.field public static final Q:Lokhttp3/m;

.field public static final R:Lokhttp3/m;

.field public static final S:Lokhttp3/m;

.field public static final T:Lokhttp3/m;

.field public static final U:Lokhttp3/m;

.field public static final V:Lokhttp3/m;

.field public static final W:Lokhttp3/m;

.field public static final X:Lokhttp3/m;

.field public static final Y:Lokhttp3/m;

.field public static final Z:Lokhttp3/m;

.field public static final a:Lokhttp3/m;

.field public static final aA:Lokhttp3/m;

.field public static final aB:Lokhttp3/m;

.field public static final aC:Lokhttp3/m;

.field public static final aD:Lokhttp3/m;

.field public static final aE:Lokhttp3/m;

.field public static final aF:Lokhttp3/m;

.field public static final aG:Lokhttp3/m;

.field public static final aH:Lokhttp3/m;

.field public static final aI:Lokhttp3/m;

.field public static final aJ:Lokhttp3/m;

.field public static final aK:Lokhttp3/m;

.field public static final aL:Lokhttp3/m;

.field public static final aM:Lokhttp3/m;

.field public static final aN:Lokhttp3/m;

.field public static final aO:Lokhttp3/m;

.field public static final aP:Lokhttp3/m;

.field public static final aQ:Lokhttp3/m;

.field public static final aR:Lokhttp3/m;

.field private static final aT:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lokhttp3/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final aa:Lokhttp3/m;

.field public static final ab:Lokhttp3/m;

.field public static final ac:Lokhttp3/m;

.field public static final ad:Lokhttp3/m;

.field public static final ae:Lokhttp3/m;

.field public static final af:Lokhttp3/m;

.field public static final ag:Lokhttp3/m;

.field public static final ah:Lokhttp3/m;

.field public static final ai:Lokhttp3/m;

.field public static final aj:Lokhttp3/m;

.field public static final ak:Lokhttp3/m;

.field public static final al:Lokhttp3/m;

.field public static final am:Lokhttp3/m;

.field public static final an:Lokhttp3/m;

.field public static final ao:Lokhttp3/m;

.field public static final ap:Lokhttp3/m;

.field public static final aq:Lokhttp3/m;

.field public static final ar:Lokhttp3/m;

.field public static final as:Lokhttp3/m;

.field public static final at:Lokhttp3/m;

.field public static final au:Lokhttp3/m;

.field public static final av:Lokhttp3/m;

.field public static final aw:Lokhttp3/m;

.field public static final ax:Lokhttp3/m;

.field public static final ay:Lokhttp3/m;

.field public static final az:Lokhttp3/m;

.field public static final b:Lokhttp3/m;

.field public static final c:Lokhttp3/m;

.field public static final d:Lokhttp3/m;

.field public static final e:Lokhttp3/m;

.field public static final f:Lokhttp3/m;

.field public static final g:Lokhttp3/m;

.field public static final h:Lokhttp3/m;

.field public static final i:Lokhttp3/m;

.field public static final j:Lokhttp3/m;

.field public static final k:Lokhttp3/m;

.field public static final l:Lokhttp3/m;

.field public static final m:Lokhttp3/m;

.field public static final n:Lokhttp3/m;

.field public static final o:Lokhttp3/m;

.field public static final p:Lokhttp3/m;

.field public static final q:Lokhttp3/m;

.field public static final r:Lokhttp3/m;

.field public static final s:Lokhttp3/m;

.field public static final t:Lokhttp3/m;

.field public static final u:Lokhttp3/m;

.field public static final v:Lokhttp3/m;

.field public static final w:Lokhttp3/m;

.field public static final x:Lokhttp3/m;

.field public static final y:Lokhttp3/m;

.field public static final z:Lokhttp3/m;


# instance fields
.field final aS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lokhttp3/m;->aT:Ljava/util/concurrent/ConcurrentMap;

    .line 45
    const-string v0, "SSL_RSA_WITH_NULL_MD5"

    .line 1396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 45
    sput-object v0, Lokhttp3/m;->a:Lokhttp3/m;

    .line 46
    const-string v0, "SSL_RSA_WITH_NULL_SHA"

    .line 2396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 46
    sput-object v0, Lokhttp3/m;->b:Lokhttp3/m;

    .line 47
    const-string v0, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    .line 3396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 47
    sput-object v0, Lokhttp3/m;->c:Lokhttp3/m;

    .line 48
    const-string v0, "SSL_RSA_WITH_RC4_128_MD5"

    .line 4396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 48
    sput-object v0, Lokhttp3/m;->d:Lokhttp3/m;

    .line 49
    const-string v0, "SSL_RSA_WITH_RC4_128_SHA"

    .line 5396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 49
    sput-object v0, Lokhttp3/m;->e:Lokhttp3/m;

    .line 52
    const-string v0, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    .line 6396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 52
    sput-object v0, Lokhttp3/m;->f:Lokhttp3/m;

    .line 53
    const-string v0, "SSL_RSA_WITH_DES_CBC_SHA"

    .line 7396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 53
    sput-object v0, Lokhttp3/m;->g:Lokhttp3/m;

    .line 54
    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 8396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 54
    sput-object v0, Lokhttp3/m;->h:Lokhttp3/m;

    .line 61
    const-string v0, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    .line 9396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 61
    sput-object v0, Lokhttp3/m;->i:Lokhttp3/m;

    .line 62
    const-string v0, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    .line 10396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 62
    sput-object v0, Lokhttp3/m;->j:Lokhttp3/m;

    .line 63
    const-string v0, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    .line 11396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 63
    sput-object v0, Lokhttp3/m;->k:Lokhttp3/m;

    .line 64
    const-string v0, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    .line 12396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 64
    sput-object v0, Lokhttp3/m;->l:Lokhttp3/m;

    .line 65
    const-string v0, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    .line 13396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 65
    sput-object v0, Lokhttp3/m;->m:Lokhttp3/m;

    .line 66
    const-string v0, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 14396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 66
    sput-object v0, Lokhttp3/m;->n:Lokhttp3/m;

    .line 67
    const-string v0, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    .line 15396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 67
    sput-object v0, Lokhttp3/m;->o:Lokhttp3/m;

    .line 68
    const-string v0, "SSL_DH_anon_WITH_RC4_128_MD5"

    .line 16396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 68
    sput-object v0, Lokhttp3/m;->p:Lokhttp3/m;

    .line 69
    const-string v0, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    .line 17396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 69
    sput-object v0, Lokhttp3/m;->q:Lokhttp3/m;

    .line 70
    const-string v0, "SSL_DH_anon_WITH_DES_CBC_SHA"

    .line 18396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 70
    sput-object v0, Lokhttp3/m;->r:Lokhttp3/m;

    .line 71
    const-string v0, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    .line 19396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 71
    sput-object v0, Lokhttp3/m;->s:Lokhttp3/m;

    .line 72
    const-string v0, "TLS_KRB5_WITH_DES_CBC_SHA"

    .line 20396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 72
    sput-object v0, Lokhttp3/m;->t:Lokhttp3/m;

    .line 73
    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    .line 21396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 73
    sput-object v0, Lokhttp3/m;->u:Lokhttp3/m;

    .line 74
    const-string v0, "TLS_KRB5_WITH_RC4_128_SHA"

    .line 22396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 74
    sput-object v0, Lokhttp3/m;->v:Lokhttp3/m;

    .line 76
    const-string v0, "TLS_KRB5_WITH_DES_CBC_MD5"

    .line 23396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 76
    sput-object v0, Lokhttp3/m;->w:Lokhttp3/m;

    .line 77
    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    .line 24396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 77
    sput-object v0, Lokhttp3/m;->x:Lokhttp3/m;

    .line 78
    const-string v0, "TLS_KRB5_WITH_RC4_128_MD5"

    .line 25396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 78
    sput-object v0, Lokhttp3/m;->y:Lokhttp3/m;

    .line 80
    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    .line 26396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 80
    sput-object v0, Lokhttp3/m;->z:Lokhttp3/m;

    .line 82
    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    .line 27396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 82
    sput-object v0, Lokhttp3/m;->A:Lokhttp3/m;

    .line 83
    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    .line 28396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 83
    sput-object v0, Lokhttp3/m;->B:Lokhttp3/m;

    .line 85
    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    .line 29396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 85
    sput-object v0, Lokhttp3/m;->C:Lokhttp3/m;

    .line 89
    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    .line 30396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 89
    sput-object v0, Lokhttp3/m;->D:Lokhttp3/m;

    .line 92
    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    .line 31396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 92
    sput-object v0, Lokhttp3/m;->E:Lokhttp3/m;

    .line 93
    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    .line 32396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 93
    sput-object v0, Lokhttp3/m;->F:Lokhttp3/m;

    .line 94
    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    .line 33396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 94
    sput-object v0, Lokhttp3/m;->G:Lokhttp3/m;

    .line 95
    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA"

    .line 34396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 95
    sput-object v0, Lokhttp3/m;->H:Lokhttp3/m;

    .line 98
    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    .line 35396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 98
    sput-object v0, Lokhttp3/m;->I:Lokhttp3/m;

    .line 99
    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    .line 36396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 99
    sput-object v0, Lokhttp3/m;->J:Lokhttp3/m;

    .line 100
    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    .line 37396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 100
    sput-object v0, Lokhttp3/m;->K:Lokhttp3/m;

    .line 101
    const-string v0, "TLS_RSA_WITH_NULL_SHA256"

    .line 38396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 101
    sput-object v0, Lokhttp3/m;->L:Lokhttp3/m;

    .line 102
    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    .line 39396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 102
    sput-object v0, Lokhttp3/m;->M:Lokhttp3/m;

    .line 103
    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    .line 40396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 103
    sput-object v0, Lokhttp3/m;->N:Lokhttp3/m;

    .line 106
    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    .line 41396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 106
    sput-object v0, Lokhttp3/m;->O:Lokhttp3/m;

    .line 113
    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    .line 42396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 113
    sput-object v0, Lokhttp3/m;->P:Lokhttp3/m;

    .line 116
    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    .line 43396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 116
    sput-object v0, Lokhttp3/m;->Q:Lokhttp3/m;

    .line 117
    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    .line 44396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 117
    sput-object v0, Lokhttp3/m;->R:Lokhttp3/m;

    .line 118
    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    .line 45396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 118
    sput-object v0, Lokhttp3/m;->S:Lokhttp3/m;

    .line 119
    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    .line 46396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 119
    sput-object v0, Lokhttp3/m;->T:Lokhttp3/m;

    .line 144
    const-string v0, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    .line 47396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 144
    sput-object v0, Lokhttp3/m;->U:Lokhttp3/m;

    .line 145
    const-string v0, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    .line 48396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 145
    sput-object v0, Lokhttp3/m;->V:Lokhttp3/m;

    .line 146
    const-string v0, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    .line 49396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 146
    sput-object v0, Lokhttp3/m;->W:Lokhttp3/m;

    .line 147
    const-string v0, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    .line 50396
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 147
    sput-object v0, Lokhttp3/m;->X:Lokhttp3/m;

    .line 150
    const-string v0, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    .line 50397
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 150
    sput-object v0, Lokhttp3/m;->Y:Lokhttp3/m;

    .line 151
    const-string v0, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    .line 50398
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 151
    sput-object v0, Lokhttp3/m;->Z:Lokhttp3/m;

    .line 154
    const-string v0, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    .line 50399
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 154
    sput-object v0, Lokhttp3/m;->aa:Lokhttp3/m;

    .line 155
    const-string v0, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    .line 50400
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 155
    sput-object v0, Lokhttp3/m;->ab:Lokhttp3/m;

    .line 186
    const-string v0, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    .line 50401
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 186
    sput-object v0, Lokhttp3/m;->ac:Lokhttp3/m;

    .line 187
    const-string v0, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    .line 50402
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 187
    sput-object v0, Lokhttp3/m;->ad:Lokhttp3/m;

    .line 188
    const-string v0, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    .line 50403
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 188
    sput-object v0, Lokhttp3/m;->ae:Lokhttp3/m;

    .line 189
    const-string v0, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    .line 50404
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 189
    sput-object v0, Lokhttp3/m;->af:Lokhttp3/m;

    .line 190
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    .line 50405
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 190
    sput-object v0, Lokhttp3/m;->ag:Lokhttp3/m;

    .line 191
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    .line 50406
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 191
    sput-object v0, Lokhttp3/m;->ah:Lokhttp3/m;

    .line 192
    const-string v0, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    .line 50407
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 192
    sput-object v0, Lokhttp3/m;->ai:Lokhttp3/m;

    .line 193
    const-string v0, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    .line 50408
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 193
    sput-object v0, Lokhttp3/m;->aj:Lokhttp3/m;

    .line 194
    const-string v0, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    .line 50409
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 194
    sput-object v0, Lokhttp3/m;->ak:Lokhttp3/m;

    .line 195
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    .line 50410
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 195
    sput-object v0, Lokhttp3/m;->al:Lokhttp3/m;

    .line 196
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    .line 50411
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 196
    sput-object v0, Lokhttp3/m;->am:Lokhttp3/m;

    .line 197
    const-string v0, "TLS_ECDH_RSA_WITH_NULL_SHA"

    .line 50412
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 197
    sput-object v0, Lokhttp3/m;->an:Lokhttp3/m;

    .line 198
    const-string v0, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    .line 50413
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 198
    sput-object v0, Lokhttp3/m;->ao:Lokhttp3/m;

    .line 199
    const-string v0, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 50414
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 199
    sput-object v0, Lokhttp3/m;->ap:Lokhttp3/m;

    .line 200
    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    .line 50415
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 200
    sput-object v0, Lokhttp3/m;->aq:Lokhttp3/m;

    .line 201
    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    .line 50416
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 201
    sput-object v0, Lokhttp3/m;->ar:Lokhttp3/m;

    .line 202
    const-string v0, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    .line 50417
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 202
    sput-object v0, Lokhttp3/m;->as:Lokhttp3/m;

    .line 203
    const-string v0, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    .line 50418
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 203
    sput-object v0, Lokhttp3/m;->at:Lokhttp3/m;

    .line 204
    const-string v0, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 50419
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 204
    sput-object v0, Lokhttp3/m;->au:Lokhttp3/m;

    .line 205
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    .line 50420
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 205
    sput-object v0, Lokhttp3/m;->av:Lokhttp3/m;

    .line 206
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    .line 50421
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 206
    sput-object v0, Lokhttp3/m;->aw:Lokhttp3/m;

    .line 207
    const-string v0, "TLS_ECDH_anon_WITH_NULL_SHA"

    .line 50422
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 207
    sput-object v0, Lokhttp3/m;->ax:Lokhttp3/m;

    .line 208
    const-string v0, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    .line 50423
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 208
    sput-object v0, Lokhttp3/m;->ay:Lokhttp3/m;

    .line 209
    const-string v0, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    .line 50424
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 209
    sput-object v0, Lokhttp3/m;->az:Lokhttp3/m;

    .line 210
    const-string v0, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    .line 50425
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 210
    sput-object v0, Lokhttp3/m;->aA:Lokhttp3/m;

    .line 211
    const-string v0, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    .line 50426
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 211
    sput-object v0, Lokhttp3/m;->aB:Lokhttp3/m;

    .line 221
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    .line 50427
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 221
    sput-object v0, Lokhttp3/m;->aC:Lokhttp3/m;

    .line 222
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    .line 50428
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 222
    sput-object v0, Lokhttp3/m;->aD:Lokhttp3/m;

    .line 223
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    .line 50429
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 223
    sput-object v0, Lokhttp3/m;->aE:Lokhttp3/m;

    .line 224
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    .line 50430
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 224
    sput-object v0, Lokhttp3/m;->aF:Lokhttp3/m;

    .line 225
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    .line 50431
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 225
    sput-object v0, Lokhttp3/m;->aG:Lokhttp3/m;

    .line 226
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    .line 50432
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 226
    sput-object v0, Lokhttp3/m;->aH:Lokhttp3/m;

    .line 227
    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    .line 50433
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 227
    sput-object v0, Lokhttp3/m;->aI:Lokhttp3/m;

    .line 228
    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    .line 50434
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 228
    sput-object v0, Lokhttp3/m;->aJ:Lokhttp3/m;

    .line 229
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    .line 50435
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 229
    sput-object v0, Lokhttp3/m;->aK:Lokhttp3/m;

    .line 230
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    .line 50436
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 230
    sput-object v0, Lokhttp3/m;->aL:Lokhttp3/m;

    .line 231
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    .line 50437
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 231
    sput-object v0, Lokhttp3/m;->aM:Lokhttp3/m;

    .line 232
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    .line 50438
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 232
    sput-object v0, Lokhttp3/m;->aN:Lokhttp3/m;

    .line 233
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    .line 50439
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 233
    sput-object v0, Lokhttp3/m;->aO:Lokhttp3/m;

    .line 234
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    .line 50440
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 234
    sput-object v0, Lokhttp3/m;->aP:Lokhttp3/m;

    .line 235
    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    .line 50441
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 235
    sput-object v0, Lokhttp3/m;->aQ:Lokhttp3/m;

    .line 236
    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    .line 50442
    invoke-static {v0}, Lokhttp3/m;->a(Ljava/lang/String;)Lokhttp3/m;

    move-result-object v0

    .line 236
    sput-object v0, Lokhttp3/m;->aR:Lokhttp3/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    if-nez p1, :cond_0

    .line 381
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 383
    :cond_0
    iput-object p1, p0, Lokhttp3/m;->aS:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public static a(Ljava/lang/String;)Lokhttp3/m;
    .locals 2

    .prologue
    .line 370
    sget-object v0, Lokhttp3/m;->aT:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/m;

    .line 371
    if-nez v0, :cond_0

    .line 372
    new-instance v1, Lokhttp3/m;

    invoke-direct {v1, p0}, Lokhttp3/m;-><init>(Ljava/lang/String;)V

    .line 373
    sget-object v0, Lokhttp3/m;->aT:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/m;

    .line 374
    if-nez v0, :cond_0

    move-object v0, v1

    .line 376
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lokhttp3/m;->aS:Ljava/lang/String;

    return-object v0
.end method
