.class final Lcom/twitter/sdk/android/core/s;
.super Ljava/lang/Object;
.source "TwitterPinningInfoProvider.java"

# interfaces
.implements Lio/fabric/sdk/android/services/network/n;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    const-string v1, "VERISIGN_CLASS1"

    const-string v2, "2343d148a255899b947d461a797ec04cfed170b7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v1, "VERISIGN_CLASS1_G3"

    const-string v2, "5519b278acb281d7eda7abc18399c3bb690424b5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v1, "VERISIGN_CLASS2_G2"

    const-string v2, "1237ba4517eead2926fdc1cdfebeedf2ded9145c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v1, "VERISIGN_CLASS2_G3"

    const-string v2, "5abec575dcaef3b08e271943fc7f250c3df661e3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v1, "VERISIGN_CLASS3"

    const-string v2, "e27f7bd877d5df9e0a3f9eb4cb0e2ea9efdb6977"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v1, "VERISIGN_CLASS3_G2"

    const-string v2, "1a21b4952b6293ce18b365ec9c0e934cb381e6d4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "VERISIGN_CLASS3_G3"

    const-string v2, "22f19e2ec6eaccfc5d2346f4c2e8f6c554dd5e07"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "VERISIGN_CLASS3_G4"

    const-string v2, "ed663135d31bd4eca614c429e319069f94c12650"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "VERISIGN_CLASS3_G5"

    const-string v2, "b181081a19a4c0941ffae89528c124c99b34acc7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "VERISIGN_CLASS4_G3"

    const-string v2, "3c03436868951cf3692ab8b426daba8fe922e5bd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "VERISIGN_UNIVERSAL"

    const-string v2, "bbc23e290bb328771dad3ea24dbdf423bd06b03d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "GEOTRUST_GLOBAL"

    const-string v2, "c07a98688d89fbab05640c117daa7d65b8cacc4e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, "GEOTRUST_GLOBAL2"

    const-string v2, "713836f2023153472b6eba6546a9101558200509"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "GEOTRUST_PRIMARY"

    const-string v2, "b01989e7effb4aafcb148f58463976224150e1ba"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "GEOTRUST_PRIMARY_G2"

    const-string v2, "bdbea71bab7157f9e475d954d2b727801a822682"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "GEOTRUST_PRIMARY_G3"

    const-string v2, "9ca98d00af740ddd8180d21345a58b8f2e9438d6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "GEOTRUST_UNIVERAL"

    const-string v2, "87e85b6353c623a3128cb0ffbbf551fe59800e22"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "GEOTRUST_UNIVERSAL2"

    const-string v2, "5e4f538685dd4f9eca5fdc0d456f7d51b1dc9b7b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "DIGICERT_GLOBAL_ROOT"

    const-string v2, "d52e13c1abe349dae8b49594ef7c3843606466bd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "DIGICERT_EV_ROOT"

    const-string v2, "83317e62854253d6d7783190ec919056e991b9e3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "DIGICERT_ASSUREDID_ROOT"

    const-string v2, "68330e61358521592983a3c8d2d2e1406e7ab3c1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "TWITTER1"

    const-string v2, "56fef3c2147d4ed38837fdbd3052387201e5778d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/twitter/sdk/android/core/s;->a:[Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/s;->b:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/sdk/android/core/s;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/twitter/sdk/android/core/R$raw;->tw__cacerts:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "changeit"

    return-object v0
.end method

.method public final c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/twitter/sdk/android/core/s;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 67
    const-wide v0, 0x14bc44941c3L

    return-wide v0
.end method
