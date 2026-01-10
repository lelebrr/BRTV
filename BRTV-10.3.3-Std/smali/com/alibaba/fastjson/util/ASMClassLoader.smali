.class public Lcom/alibaba/fastjson/util/ASMClassLoader;
.super Ljava/lang/ClassLoader;
.source "MyApplication"


# static fields
.field private static DOMAIN:Ljava/security/ProtectionDomain;

.field private static classMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/util/ASMClassLoader;->classMapping:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Lcom/alibaba/fastjson/util/ASMClassLoader$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/alibaba/fastjson/util/ASMClassLoader$1;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/security/ProtectionDomain;

    .line 18
    .line 19
    sput-object v0, Lcom/alibaba/fastjson/util/ASMClassLoader;->DOMAIN:Ljava/security/ProtectionDomain;

    .line 20
    .line 21
    const/16 v0, 0x38

    .line 22
    .line 23
    new-array v1, v0, [Ljava/lang/Class;

    .line 24
    .line 25
    const-class v2, Lcom/alibaba/fastjson/JSON;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    aput-object v2, v1, v3

    .line 29
    .line 30
    const-class v2, Lcom/alibaba/fastjson/JSONObject;

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    aput-object v2, v1, v4

    .line 34
    .line 35
    const-class v2, Lcom/alibaba/fastjson/JSONArray;

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    aput-object v2, v1, v5

    .line 39
    .line 40
    const-class v2, Lcom/alibaba/fastjson/JSONPath;

    .line 41
    .line 42
    const/4 v5, 0x3

    .line 43
    aput-object v2, v1, v5

    .line 44
    .line 45
    const-class v2, Lcom/alibaba/fastjson/JSONAware;

    .line 46
    .line 47
    const/4 v5, 0x4

    .line 48
    aput-object v2, v1, v5

    .line 49
    .line 50
    const-class v2, Lcom/alibaba/fastjson/JSONException;

    .line 51
    .line 52
    const/4 v5, 0x5

    .line 53
    aput-object v2, v1, v5

    .line 54
    .line 55
    const-class v2, Lcom/alibaba/fastjson/JSONPathException;

    .line 56
    .line 57
    const/4 v5, 0x6

    .line 58
    aput-object v2, v1, v5

    .line 59
    .line 60
    const-class v2, Lcom/alibaba/fastjson/JSONReader;

    .line 61
    .line 62
    const/4 v5, 0x7

    .line 63
    aput-object v2, v1, v5

    .line 64
    .line 65
    const-class v2, Lcom/alibaba/fastjson/JSONStreamAware;

    .line 66
    .line 67
    const/16 v5, 0x8

    .line 68
    .line 69
    aput-object v2, v1, v5

    .line 70
    .line 71
    const-class v2, Lcom/alibaba/fastjson/JSONWriter;

    .line 72
    .line 73
    const/16 v5, 0x9

    .line 74
    .line 75
    aput-object v2, v1, v5

    .line 76
    .line 77
    const-class v2, Lcom/alibaba/fastjson/TypeReference;

    .line 78
    .line 79
    const/16 v5, 0xa

    .line 80
    .line 81
    aput-object v2, v1, v5

    .line 82
    .line 83
    const-class v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 84
    .line 85
    const/16 v5, 0xb

    .line 86
    .line 87
    aput-object v2, v1, v5

    .line 88
    .line 89
    const-class v2, Lcom/alibaba/fastjson/util/TypeUtils;

    .line 90
    .line 91
    const/16 v5, 0xc

    .line 92
    .line 93
    aput-object v2, v1, v5

    .line 94
    .line 95
    const-class v2, Lcom/alibaba/fastjson/util/IOUtils;

    .line 96
    .line 97
    const/16 v5, 0xd

    .line 98
    .line 99
    aput-object v2, v1, v5

    .line 100
    .line 101
    const-class v2, Lcom/alibaba/fastjson/util/IdentityHashMap;

    .line 102
    .line 103
    const/16 v5, 0xe

    .line 104
    .line 105
    aput-object v2, v1, v5

    .line 106
    .line 107
    const-class v2, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    .line 108
    .line 109
    const/16 v5, 0xf

    .line 110
    .line 111
    aput-object v2, v1, v5

    .line 112
    .line 113
    const-class v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 114
    .line 115
    const/16 v5, 0x10

    .line 116
    .line 117
    aput-object v2, v1, v5

    .line 118
    .line 119
    const-class v2, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 120
    .line 121
    const/16 v5, 0x11

    .line 122
    .line 123
    aput-object v2, v1, v5

    .line 124
    .line 125
    const-class v2, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 126
    .line 127
    const/16 v5, 0x12

    .line 128
    .line 129
    aput-object v2, v1, v5

    .line 130
    .line 131
    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeFilterable;

    .line 132
    .line 133
    const/16 v5, 0x13

    .line 134
    .line 135
    aput-object v2, v1, v5

    .line 136
    .line 137
    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .line 138
    .line 139
    const/16 v5, 0x14

    .line 140
    .line 141
    aput-object v2, v1, v5

    .line 142
    .line 143
    const-class v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    .line 144
    .line 145
    const/16 v5, 0x15

    .line 146
    .line 147
    aput-object v2, v1, v5

    .line 148
    .line 149
    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 150
    .line 151
    const/16 v5, 0x16

    .line 152
    .line 153
    aput-object v2, v1, v5

    .line 154
    .line 155
    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 156
    .line 157
    const/16 v5, 0x17

    .line 158
    .line 159
    aput-object v2, v1, v5

    .line 160
    .line 161
    const-class v2, Lcom/alibaba/fastjson/serializer/Labels;

    .line 162
    .line 163
    const/16 v5, 0x18

    .line 164
    .line 165
    aput-object v2, v1, v5

    .line 166
    .line 167
    const-class v2, Lcom/alibaba/fastjson/serializer/LabelFilter;

    .line 168
    .line 169
    const/16 v5, 0x19

    .line 170
    .line 171
    aput-object v2, v1, v5

    .line 172
    .line 173
    const-class v2, Lcom/alibaba/fastjson/serializer/ContextValueFilter;

    .line 174
    .line 175
    const/16 v5, 0x1a

    .line 176
    .line 177
    aput-object v2, v1, v5

    .line 178
    .line 179
    const-class v2, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .line 180
    .line 181
    const/16 v5, 0x1b

    .line 182
    .line 183
    aput-object v2, v1, v5

    .line 184
    .line 185
    const-class v2, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 186
    .line 187
    const/16 v5, 0x1c

    .line 188
    .line 189
    aput-object v2, v1, v5

    .line 190
    .line 191
    const-class v2, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 192
    .line 193
    const/16 v5, 0x1d

    .line 194
    .line 195
    aput-object v2, v1, v5

    .line 196
    .line 197
    const-class v2, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 198
    .line 199
    const/16 v5, 0x1e

    .line 200
    .line 201
    aput-object v2, v1, v5

    .line 202
    .line 203
    const-class v2, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    .line 204
    .line 205
    const/16 v5, 0x1f

    .line 206
    .line 207
    aput-object v2, v1, v5

    .line 208
    .line 209
    const-class v2, Lcom/alibaba/fastjson/serializer/ValueFilter;

    .line 210
    .line 211
    const/16 v5, 0x20

    .line 212
    .line 213
    aput-object v2, v1, v5

    .line 214
    .line 215
    const-class v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 216
    .line 217
    const/16 v5, 0x21

    .line 218
    .line 219
    aput-object v2, v1, v5

    .line 220
    .line 221
    const-class v2, Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;

    .line 222
    .line 223
    const/16 v5, 0x22

    .line 224
    .line 225
    aput-object v2, v1, v5

    .line 226
    .line 227
    const-class v2, Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 228
    .line 229
    const/16 v5, 0x23

    .line 230
    .line 231
    aput-object v2, v1, v5

    .line 232
    .line 233
    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 234
    .line 235
    const/16 v5, 0x24

    .line 236
    .line 237
    aput-object v2, v1, v5

    .line 238
    .line 239
    const-class v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 240
    .line 241
    const/16 v5, 0x25

    .line 242
    .line 243
    aput-object v2, v1, v5

    .line 244
    .line 245
    const-class v2, Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 246
    .line 247
    const/16 v5, 0x26

    .line 248
    .line 249
    aput-object v2, v1, v5

    .line 250
    .line 251
    const-class v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    .line 252
    .line 253
    const/16 v5, 0x27

    .line 254
    .line 255
    aput-object v2, v1, v5

    .line 256
    .line 257
    const-class v2, Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 258
    .line 259
    const/16 v5, 0x28

    .line 260
    .line 261
    aput-object v2, v1, v5

    .line 262
    .line 263
    const-class v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 264
    .line 265
    const/16 v5, 0x29

    .line 266
    .line 267
    aput-object v2, v1, v5

    .line 268
    .line 269
    const-class v2, Lcom/alibaba/fastjson/parser/ParseContext;

    .line 270
    .line 271
    const/16 v5, 0x2a

    .line 272
    .line 273
    aput-object v2, v1, v5

    .line 274
    .line 275
    const-class v2, Lcom/alibaba/fastjson/parser/JSONToken;

    .line 276
    .line 277
    const/16 v5, 0x2b

    .line 278
    .line 279
    aput-object v2, v1, v5

    .line 280
    .line 281
    const-class v2, Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 282
    .line 283
    const/16 v5, 0x2c

    .line 284
    .line 285
    aput-object v2, v1, v5

    .line 286
    .line 287
    const-class v2, Lcom/alibaba/fastjson/parser/Feature;

    .line 288
    .line 289
    const/16 v5, 0x2d

    .line 290
    .line 291
    aput-object v2, v1, v5

    .line 292
    .line 293
    const-class v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    .line 294
    .line 295
    const/16 v5, 0x2e

    .line 296
    .line 297
    aput-object v2, v1, v5

    .line 298
    .line 299
    const-class v2, Lcom/alibaba/fastjson/parser/JSONReaderScanner;

    .line 300
    .line 301
    const/16 v5, 0x2f

    .line 302
    .line 303
    aput-object v2, v1, v5

    .line 304
    .line 305
    const-class v2, Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;

    .line 306
    .line 307
    const/16 v5, 0x30

    .line 308
    .line 309
    aput-object v2, v1, v5

    .line 310
    .line 311
    const-class v2, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 312
    .line 313
    const/16 v5, 0x31

    .line 314
    .line 315
    aput-object v2, v1, v5

    .line 316
    .line 317
    const-class v2, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    .line 318
    .line 319
    const/16 v5, 0x32

    .line 320
    .line 321
    aput-object v2, v1, v5

    .line 322
    .line 323
    const-class v2, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    .line 324
    .line 325
    const/16 v5, 0x33

    .line 326
    .line 327
    aput-object v2, v1, v5

    .line 328
    .line 329
    const-class v2, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    .line 330
    .line 331
    const/16 v5, 0x34

    .line 332
    .line 333
    aput-object v2, v1, v5

    .line 334
    .line 335
    const-class v2, Lcom/alibaba/fastjson/serializer/BeanContext;

    .line 336
    .line 337
    const/16 v5, 0x35

    .line 338
    .line 339
    aput-object v2, v1, v5

    .line 340
    .line 341
    const-class v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 342
    .line 343
    const/16 v5, 0x36

    .line 344
    .line 345
    aput-object v2, v1, v5

    .line 346
    .line 347
    const-class v2, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    .line 348
    .line 349
    const/16 v5, 0x37

    .line 350
    .line 351
    aput-object v2, v1, v5

    .line 352
    .line 353
    :goto_0
    if-ge v3, v0, :cond_0

    .line 354
    .line 355
    aget-object v2, v1, v3

    .line 356
    .line 357
    sget-object v5, Lcom/alibaba/fastjson/util/ASMClassLoader;->classMapping:Ljava/util/Map;

    .line 358
    .line 359
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    add-int/2addr v3, v4

    .line 367
    goto :goto_0

    .line 368
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/alibaba/fastjson/util/ASMClassLoader;->getParentClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static getParentClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-class v1, Lcom/alibaba/fastjson/JSON;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :catch_0
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method


# virtual methods
.method public defineClassPublic(Ljava/lang/String;[BII)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 1
    sget-object v5, Lcom/alibaba/fastjson/util/ASMClassLoader;->DOMAIN:Ljava/security/ProtectionDomain;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public isExternalClass(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    move-object v1, p0

    .line 10
    :goto_0
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-ne v1, p1, :cond_1

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 p1, 0x1

    .line 21
    return p1
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/util/ASMClassLoader;->classMapping:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Class;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
