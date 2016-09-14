.class final Lcom/loc/cn;
.super Landroid/telephony/PhoneStateListener;
.source "CgiManager.java"


# instance fields
.field final synthetic a:Lcom/loc/cm;


# direct methods
.method constructor <init>(Lcom/loc/cm;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/cn;->a:Lcom/loc/cm;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 3

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cm;

    invoke-virtual {v0, p1}, Lcom/loc/cm;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cm;

    .line 1000
    iput-object p1, v0, Lcom/loc/cm;->i:Landroid/telephony/CellLocation;

    .line 0
    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cm;

    .line 2000
    iget-object v0, v0, Lcom/loc/cm;->n:Landroid/telephony/PhoneStateListener;

    .line 0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cm;

    .line 3000
    iget-object v0, v0, Lcom/loc/cm;->n:Landroid/telephony/PhoneStateListener;

    .line 0
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "initPhoneStateListener7"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    .prologue
    .line 0
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cm;

    .line 12000
    iget-object v0, v0, Lcom/loc/cm;->n:Landroid/telephony/PhoneStateListener;

    .line 0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cm;

    .line 13000
    iget-object v0, v0, Lcom/loc/cm;->n:Landroid/telephony/PhoneStateListener;

    .line 0
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cm;

    .line 10000
    invoke-virtual {v0}, Lcom/loc/cm;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 0
    :catch_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "initPhoneStateListener4"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cm;

    .line 11000
    invoke-virtual {v0}, Lcom/loc/cm;->c()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 0
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSignalStrengthChanged(I)V
    .locals 3

    .prologue
    .line 0
    const/16 v0, -0x71

    :try_start_0
    iget-object v1, p0, Lcom/loc/cn;->a:Lcom/loc/cm;

    .line 4000
    iget v1, v1, Lcom/loc/cm;->b:I

    .line 0
    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/loc/cn;->a:Lcom/loc/cm;

    invoke-static {v1, v0}, Lcom/loc/cm;->a(Lcom/loc/cm;I)V

    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cm;

    .line 5000
    iget-object v0, v0, Lcom/loc/cm;->n:Landroid/telephony/PhoneStateListener;

    .line 0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cm;

    .line 6000
    iget-object v0, v0, Lcom/loc/cm;->n:Landroid/telephony/PhoneStateListener;

    .line 0
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthChanged(I)V

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    invoke-static {p1}, Lcom/loc/dn;->a(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/loc/dn;->a(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "initPhoneStateListener6"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    .prologue
    .line 0
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, -0x71

    :try_start_0
    iget-object v1, p0, Lcom/loc/cn;->a:Lcom/loc/cm;

    .line 7000
    iget v1, v1, Lcom/loc/cm;->b:I

    .line 0
    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/loc/cn;->a:Lcom/loc/cm;

    invoke-static {v1, v0}, Lcom/loc/cm;->a(Lcom/loc/cm;I)V

    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cm;

    .line 8000
    iget-object v0, v0, Lcom/loc/cm;->n:Landroid/telephony/PhoneStateListener;

    .line 0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cm;

    .line 9000
    iget-object v0, v0, Lcom/loc/cm;->n:Landroid/telephony/PhoneStateListener;

    .line 0
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "initPhoneStateListener5"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    invoke-static {v0}, Lcom/loc/dn;->a(I)I

    move-result v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
