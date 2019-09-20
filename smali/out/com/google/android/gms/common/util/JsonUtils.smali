.class public final Lcom/google/android/gms/common/util/JsonUtils;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final zzaae:Ljava/util/regex/Pattern;

.field private static final zzaaf:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\\\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zzaae:Ljava/util/regex/Pattern;

    const-string v0, "[\\\\\"/\u0008\u000c\n\r\t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zzaaf:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areJsonStringsEquivalent(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    if-nez p1, :cond_c

    return v0

    :cond_c
    :try_start_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_1c} :catch_1d

    return v1

    :catch_1d
    :try_start_1d
    new-instance v1, Lorg/json/JSONArray;

    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v1, Lorg/json/JSONArray;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_2d} :catch_2e

    return p0

    :catch_2e
    :cond_2e
    return v0
.end method

.method public static areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_81

    if-nez p1, :cond_c

    return v1

    :cond_c
    instance-of v2, p0, Lorg/json/JSONObject;

    if-eqz v2, :cond_4a

    instance-of v2, p1, Lorg/json/JSONObject;

    if-eqz v2, :cond_4a

    check-cast p0, Lorg/json/JSONObject;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-eq v2, v3, :cond_23

    return v1

    :cond_23
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3a

    return v1

    :cond_3a
    :try_start_3a
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_46} :catch_48

    if-nez v3, :cond_27

    :catch_48
    return v1

    :cond_49
    return v0

    :cond_4a
    instance-of v2, p0, Lorg/json/JSONArray;

    if-eqz v2, :cond_7c

    instance-of v2, p1, Lorg/json/JSONArray;

    if-eqz v2, :cond_7c

    check-cast p0, Lorg/json/JSONArray;

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eq v2, v3, :cond_61

    return v1

    :cond_61
    const/4 v2, 0x0

    :goto_62
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_7b

    :try_start_68
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_74
    .catch Lorg/json/JSONException; {:try_start_68 .. :try_end_74} :catch_7a

    if-nez v3, :cond_77

    return v1

    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    :catch_7a
    return v1

    :cond_7b
    return v0

    :cond_7c
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_81
    return v1
.end method

.method public static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    sget-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zzaaf:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_51

    if-nez v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :cond_1a
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4e

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_4b

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_48

    packed-switch v2, :pswitch_data_5c

    packed-switch v2, :pswitch_data_66

    goto :goto_d

    :pswitch_36
    const-string v2, "\\\\r"

    goto :goto_41

    :pswitch_39
    const-string v2, "\\\\f"

    goto :goto_41

    :pswitch_3c
    const-string v2, "\\\\n"

    goto :goto_41

    :pswitch_3f
    const-string v2, "\\\\t"

    :goto_41
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_d

    :pswitch_45
    const-string v2, "\\\\b"

    goto :goto_41

    :cond_48
    const-string v2, "\\\\\\\\"

    goto :goto_41

    :cond_4b
    const-string v2, "\\\\/"

    goto :goto_41

    :cond_4e
    const-string v2, "\\\\\\\""

    goto :goto_41

    :cond_51
    if-nez v1, :cond_54

    return-object p0

    :cond_54
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5b
    return-object p0

    :pswitch_data_5c
    .packed-switch 0x8
        :pswitch_45
        :pswitch_3f
        :pswitch_3c
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0xc
        :pswitch_39
        :pswitch_36
    .end packed-switch
.end method

.method public static unescapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_74

    invoke-static {p0}, Lcom/google/android/gms/common/util/UnicodeUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zzaae:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6a

    if-nez v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :cond_1e
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_64

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_61

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_5e

    const/16 v3, 0x62

    if-eq v2, v3, :cond_5b

    const/16 v3, 0x66

    if-eq v2, v3, :cond_58

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_55

    const/16 v3, 0x72

    if-eq v2, v3, :cond_52

    const/16 v3, 0x74

    if-eq v2, v3, :cond_4f

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Found an escaped character that should never be."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4f
    const-string v2, "\t"

    goto :goto_66

    :cond_52
    const-string v2, "\r"

    goto :goto_66

    :cond_55
    const-string v2, "\n"

    goto :goto_66

    :cond_58
    const-string v2, "\u000c"

    goto :goto_66

    :cond_5b
    const-string v2, "\u0008"

    goto :goto_66

    :cond_5e
    const-string v2, "\\\\"

    goto :goto_66

    :cond_61
    const-string v2, "/"

    goto :goto_66

    :cond_64
    const-string v2, "\""

    :goto_66
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_11

    :cond_6a
    if-nez v1, :cond_6d

    return-object p0

    :cond_6d
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_74
    return-object p0
.end method
