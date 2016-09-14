.class final Lorg/threeten/bp/zone/d;
.super Ljava/lang/Object;
.source "TzdbZoneRulesProvider.java"


# instance fields
.field final a:Ljava/lang/String;

.field private final b:[Ljava/lang/String;

.field private final c:[S

.field private final d:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[SLjava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[S",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p4, p0, Lorg/threeten/bp/zone/d;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 295
    iput-object p1, p0, Lorg/threeten/bp/zone/d;->a:Ljava/lang/String;

    .line 296
    iput-object p2, p0, Lorg/threeten/bp/zone/d;->b:[Ljava/lang/String;

    .line 297
    iput-object p3, p0, Lorg/threeten/bp/zone/d;->c:[S

    .line 298
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lorg/threeten/bp/zone/i;
    .locals 4

    .prologue
    .line 301
    iget-object v0, p0, Lorg/threeten/bp/zone/d;->b:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 302
    if-gez v0, :cond_0

    .line 303
    const/4 v0, 0x0

    .line 306
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/threeten/bp/zone/d;->c:[S

    aget-short v1, v1, v0

    .line 1313
    iget-object v0, p0, Lorg/threeten/bp/zone/d;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1314
    instance-of v2, v0, [B

    if-eqz v2, :cond_1

    .line 1315
    check-cast v0, [B

    check-cast v0, [B

    .line 1316
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1317
    invoke-static {v2}, Lorg/threeten/bp/zone/a;->a(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v0

    .line 1318
    iget-object v2, p0, Lorg/threeten/bp/zone/d;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1320
    :cond_1
    check-cast v0, Lorg/threeten/bp/zone/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    new-instance v1, Lorg/threeten/bp/zone/ZoneRulesException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid binary time-zone data: TZDB:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/threeten/bp/zone/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lorg/threeten/bp/zone/d;->a:Ljava/lang/String;

    return-object v0
.end method
