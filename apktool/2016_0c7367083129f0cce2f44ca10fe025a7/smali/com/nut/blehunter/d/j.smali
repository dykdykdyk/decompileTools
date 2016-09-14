.class public final Lcom/nut/blehunter/d/j;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 121
    .line 7033
    if-nez p0, :cond_2

    .line 7034
    const-string v0, ""

    .line 122
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-static {p0}, Lcom/nut/blehunter/d/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/g;->a()Lcom/google/i18n/phonenumbers/g;

    move-result-object v1

    .line 7264
    invoke-virtual {v1, v0}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 7265
    sget-object v1, Lcom/google/i18n/phonenumbers/g;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    if-nez v0, :cond_1

    const-string v0, "null"

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid or missing region code ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") provided."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 7269
    const/4 v0, 0x0

    .line 126
    :goto_1
    if-lez v0, :cond_9

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_2
    return-object v0

    .line 7037
    :cond_2
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 7038
    if-nez v0, :cond_b

    .line 7039
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v2, v0

    .line 7042
    :goto_3
    if-eqz v2, :cond_a

    .line 7043
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 7044
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "^0*$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 7045
    invoke-static {v0}, Lcom/nut/blehunter/d/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7048
    :goto_4
    if-nez v0, :cond_4

    .line 7049
    if-eqz v2, :cond_3

    .line 7050
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 7052
    :cond_3
    if-nez v0, :cond_4

    .line 7053
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 7056
    :cond_4
    if-eqz v0, :cond_5

    .line 7057
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    .line 7059
    goto/16 :goto_0

    .line 7283
    :cond_6
    invoke-virtual {v1, v0}, Lcom/google/i18n/phonenumbers/g;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/a/c;

    move-result-object v1

    .line 7284
    if-nez v1, :cond_8

    .line 7285
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid region code: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 7287
    :cond_8
    iget v0, v1, Lcom/google/i18n/phonenumbers/a/c;->r:I

    goto/16 :goto_1

    .line 129
    :cond_9
    const-string v0, ""

    goto :goto_2

    :cond_a
    move-object v0, v1

    goto :goto_4

    :cond_b
    move-object v2, v1

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, ""

    .line 145
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\\+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;Landroid/widget/EditText;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 84
    :try_start_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/g;->a()Lcom/google/i18n/phonenumbers/g;

    move-result-object v1

    .line 85
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/i18n/phonenumbers/g;->c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/l;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4062
    iget-wide v4, v1, Lcom/google/i18n/phonenumbers/l;->c:J

    .line 92
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    :goto_0
    return v0

    .line 89
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/NumberParseException;->printStackTrace()V

    goto :goto_0

    .line 5046
    :cond_0
    iget v0, v1, Lcom/google/i18n/phonenumbers/l;->a:I

    .line 95
    packed-switch v0, :pswitch_data_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6062
    iget-wide v2, v1, Lcom/google/i18n/phonenumbers/l;->c:J

    .line 100
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/d/i;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 97
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5062
    iget-wide v2, v1, Lcom/google/i18n/phonenumbers/l;->c:J

    .line 97
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/d/i;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/User;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/User;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/nut/blehunter/d/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 63
    if-nez p0, :cond_1

    move-object v0, v1

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 66
    :cond_1
    invoke-static {}, Lcom/google/i18n/phonenumbers/g;->a()Lcom/google/i18n/phonenumbers/g;

    move-result-object v2

    .line 69
    :try_start_0
    invoke-virtual {v2, p0}, Lcom/google/i18n/phonenumbers/g;->c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/l;

    move-result-object v3

    .line 4046
    iget v4, v3, Lcom/google/i18n/phonenumbers/l;->a:I

    .line 3199
    iget-object v0, v2, Lcom/google/i18n/phonenumbers/g;->h:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3200
    if-nez v0, :cond_2

    .line 3201
    invoke-static {v3}, Lcom/google/i18n/phonenumbers/g;->a(Lcom/google/i18n/phonenumbers/l;)Ljava/lang/String;

    move-result-object v0

    .line 3202
    sget-object v2, Lcom/google/i18n/phonenumbers/g;->b:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x36

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Missing/invalid country_code ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object v0, v1

    .line 71
    :goto_1
    if-nez v0, :cond_0

    move-object v0, v1

    .line 72
    goto :goto_0

    .line 3206
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 3207
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 3209
    :cond_3
    invoke-virtual {v2, v3, v0}, Lcom/google/i18n/phonenumbers/g;->a(Lcom/google/i18n/phonenumbers/l;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 75
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/widget/TextView;Landroid/widget/EditText;)Z
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v0}, Lcom/nut/blehunter/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 110
    packed-switch v0, :pswitch_data_0

    .line 115
    invoke-static {v1}, Lcom/nut/blehunter/d/i;->b(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    .line 112
    :pswitch_0
    invoke-static {v1}, Lcom/nut/blehunter/d/i;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch
.end method
