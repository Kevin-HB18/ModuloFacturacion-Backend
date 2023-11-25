const port = process.env.PORT || 3001,
express = require('express'),
app = express();
db = require('./models');
const cors = require("cors");

app.listen(port, ()=>{
    console.log(`Servidor corriendo en puerto ${port}...`)
});

app.use(express.json());

app.use((req, res, next) => {
    const allowedOrigins = ['http://localhost:3000'];
    const origin = req.headers.origin;
    if (allowedOrigins.includes(origin)) {
        res.setHeader('Access-Control-Allow-Origin', origin);
    }
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization');
    next();
});

const corsOptions = {
    origin: ['localhost:3000']
};

app.use(cors(corsOptions));

//app.use(express.json());

app.get('/api/obtenercargos', async (req, res) => {
    try {
        const query = 'SELECT codCargo, nomCargo FROM Cargo;';
        const result = await db.sequelize.query(query, { type: db.sequelize.QueryTypes.SELECT });        
        res.json(result);
    } catch (error) {
        console.error(`Error en la consulta SELECT: ${error}`);
        res.status(500).json({ error: 'Error en la consulta SELECT' });
    }
});

app.post('/api/verificarlogin', async (req, res) => {
    try {
      const { CODEMPLEADO, CODCARGO } = req.body;     
      const query= `SELECT COUNT(codEmpleado) COUNT FROM emplcargo where codEmpleado = :CODEMPLEADO AND codCargo = :CODCARGO ;`
      const result = await db.sequelize.query(query, {
        replacements: {
          CODEMPLEADO,
          CODCARGO,
        },
        type: db.sequelize.QueryTypes.SELECT,
      });
  
      // Si count es mayor que 0, significa que ya existe una combinación en la base de datos      
      const exists = result[0].COUNT > 0;  
      res.json({ exists });
    } catch (error) {
      console.error('Error al verificar el registro:', error);
      res.status(500).json({ error: 'Error en el servidor' });
    }
  });

app.get('/api/obtenertipodoc', async (req, res) => {
    try {
        const query = 'SELECT idTipoDoc, descTipoDoc FROM TipoDoc;';
        const result = await db.sequelize.query(query, { type: db.sequelize.QueryTypes.SELECT });        
        res.json(result);
    } catch (error) {
        console.error(`Error en la consulta SELECT: ${error}`);
        res.status(500).json({ error: 'Error en la consulta SELECT' });
    }
});

app.get('/api/obtenertipocontact', async (req, res) => {
  try {
      const query = 'SELECT idTipoContacto, descTipoContacto FROM TipoContacto;';
      const result = await db.sequelize.query(query, { type: db.sequelize.QueryTypes.SELECT });        
      res.json(result);
  } catch (error) {
      console.error(`Error en la consulta SELECT: ${error}`);
      res.status(500).json({ error: 'Error en la consulta SELECT' });
  }
});

app.get('/api/obtenertipopersona', async (req, res) => {
  try {
      const query = 'SELECT idTipoPersona, DescTipoPersona FROM TipoPersona;';
      const result = await db.sequelize.query(query, { type: db.sequelize.QueryTypes.SELECT });        
      res.json(result);
  } catch (error) {
      console.error(`Error en la consulta SELECT: ${error}`);
      res.status(500).json({ error: 'Error en la consulta SELECT' });
  }
});
/*-------------------------------------------------------------------------------------------------------*/
/*------------------------------------------------NOMENCLATURAS------------------------------------------------*/
app.get('/api/obtenertipovia', async (req, res) => {
  try {
      const query = 'SELECT idNomen, DescNomen FROM Nomenclatura where Posicion=1 ;';
      const result = await db.sequelize.query(query, { type: db.sequelize.QueryTypes.SELECT });        
      res.json(result);
  } catch (error) {
      console.error(`Error en la consulta SELECT: ${error}`);
      res.status(500).json({ error: 'Error en la consulta SELECT' });
  }
});

app.get('/api/obtenertipocuadrante', async (req, res) => {
  try {
      const query = 'SELECT idNomen, DescNomen FROM Nomenclatura where Posicion=6 ;';
      const result = await db.sequelize.query(query, { type: db.sequelize.QueryTypes.SELECT });        
      res.json(result);
  } catch (error) {
      console.error(`Error en la consulta SELECT: ${error}`);
      res.status(500).json({ error: 'Error en la consulta SELECT' });
  }
});

app.get('/api/obtenertipobarrio', async (req, res) => {
  try {
      const query = 'SELECT idNomen, DescNomen FROM Nomenclatura where Posicion=13 ;';
      const result = await db.sequelize.query(query, { type: db.sequelize.QueryTypes.SELECT });        
      res.json(result);
  } catch (error) {
      console.error(`Error en la consulta SELECT: ${error}`);
      res.status(500).json({ error: 'Error en la consulta SELECT' });
  }
});

app.get('/api/obtenertipourbanizacion', async (req, res) => {
  try {
      const query = 'SELECT idNomen, DescNomen FROM Nomenclatura where Posicion=17 ;';
      const result = await db.sequelize.query(query, { type: db.sequelize.QueryTypes.SELECT });        
      res.json(result);
  } catch (error) {
      console.error(`Error en la consulta SELECT: ${error}`);
      res.status(500).json({ error: 'Error en la consulta SELECT' });
  }
});

app.get('/api/obtenertipomanzana', async (req, res) => {
  try {
      const query = 'SELECT idNomen, DescNomen FROM Nomenclatura where Posicion=15 ;';
      const result = await db.sequelize.query(query, { type: db.sequelize.QueryTypes.SELECT });        
      res.json(result);
  } catch (error) {
      console.error(`Error en la consulta SELECT: ${error}`);
      res.status(500).json({ error: 'Error en la consulta SELECT' });
  }
});

app.get('/api/obtenertipopredio', async (req, res) => {
  try {
      const query = 'SELECT idNomen, DescNomen FROM Nomenclatura where Posicion=19 ;';
      const result = await db.sequelize.query(query, { type: db.sequelize.QueryTypes.SELECT });        
      res.json(result);
  } catch (error) {
      console.error(`Error en la consulta SELECT: ${error}`);
      res.status(500).json({ error: 'Error en la consulta SELECT' });
  }
});

app.get('/api/obtenertipocomplemento', async (req, res) => {
  try {
      const query = 'SELECT idNomen, DescNomen FROM Nomenclatura where Posicion=21 ;';
      const result = await db.sequelize.query(query, { type: db.sequelize.QueryTypes.SELECT });        
      res.json(result);
  } catch (error) {
      console.error(`Error en la consulta SELECT: ${error}`);
      res.status(500).json({ error: 'Error en la consulta SELECT' });
  }
});

app.get('/api/obtenerregistrosdireccion', async (req, res) => {
  try {
      const query = `SELECT COUNT(NUMDIRECC) TOTALREGISTROS
                      FROM (
                      SELECT DISTINCT idDireccion NUMDIRECC
                      FROM DIRECCION)
                      ResultadosUnicos;`;
      const result = await db.sequelize.query(query, { type: db.sequelize.QueryTypes.SELECT });        
      res.json(result[0].TOTALREGISTROS);
  } catch (error) {
      console.error(`Error en la consulta SELECT: ${error}`);
      res.status(500).json({ error: 'Error en la consulta SELECT' });
  }
});
/*-------------------------------------------------------------------------------------------------------*/
/*---------------------------------INSERCIONESREGISTRO------------------------------------------------------*/
app.post('/api/verificarRegistro', async (req, res) => {
  try {
    const {IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO } = req.body;     
    const query = `SELECT COUNT(*) COUNT FROM persona WHERE IDTIPOPERSONA = :IDTIPOPERSONA AND IDTIPODOC = :IDTIPODOC AND NDOCUMENTO = :NDOCUMENTO ;`;
    const result = await db.sequelize.query(query, {
      replacements: {
        IDTIPOPERSONA,
        IDTIPODOC,
        NDOCUMENTO,
      },
      type: db.sequelize.QueryTypes.SELECT,
    });

    // Si count es mayor que 0, significa que ya existe una combinación en la base de datos      
    const exists = result[0].COUNT > 0;  
    res.json({ exists });
  } catch (error) {
    console.error('Error al verificar el registro:', error);
    res.status(500).json({ error: 'Error en el servidor' });
  }
});

app.post('/api/insertarPersona', async (req, res) => {
  try{   
      const {IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO, NOMBRE, APELLIDO} = req.body;               
      const query = `INSERT INTO persona (IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO, NOMBRE, APELLIDO) VALUES (:IDTIPOPERSONA, :IDTIPODOC, :NDOCUMENTO, :NOMBRE, :APELLIDO);`;
      await db.sequelize.query(query, {
          replacements: {
            IDTIPOPERSONA,
            IDTIPODOC,
            NDOCUMENTO,
            NOMBRE,
            APELLIDO            
          },
          type: db.sequelize.QueryTypes.INSERT,
        });      
        res.status(200).json({
          "mensaje": "se registró persona"
      });  
  }catch(error){
      console.error('Error al insertar persona en la base de datos: ' + error);
      res.status(500).json({ error: 'No se pudo registrar la persona.' });
  }  
});

app.post('/api/insertarcontacto', async (req, res) => {  
  try{   
      const {IDTIPOCONTACTO, DESCTIPOCONTACTO,IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO, DESCCONTACTO} = req.body;  
      console.log(req.body);          
      const query = `INSERT INTO CONTACTO (CONSECCONTACTO,IDTIPOCONTACTO, DESCTIPOCONTACTO,IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO, DESCCONTACTO) VALUES (SECUENCIA_CONTACTO.nextval,:IDTIPOCONTACTO, :DESCTIPOCONTACTO,:IDTIPOPERSONA, :IDTIPODOC, :NDOCUMENTO, :DESCCONTACTO);`;
      await db.sequelize.query(query, {
          replacements: {            
            IDTIPOCONTACTO,
            DESCTIPOCONTACTO,
            IDTIPOPERSONA,
            IDTIPODOC,
            NDOCUMENTO,
            DESCCONTACTO                        
          },
          type: db.sequelize.QueryTypes.INSERT,
        });        
        res.status(200).json({
          "mensaje": "se registró contacto"
      });
  }catch(error){
      console.error('Error al insertar contactos en la base de datos: ' + error);
      res.status(500).json({ error: 'No se pudo registrar contacto.' });
  }  
});

app.post('/api/insertardireccion', async (req, res) => {  
  try{   
      const {POSICION, IDDIRECCION, IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO, IDNOMEN, VALORDIREC} = req.body;  
      console.log(req.body);          
      const query = `INSERT INTO DIRECCION (POSICION, IDDIRECCION,IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO, IDNOMEN, VALORDIREC) VALUES (:POSICION, :IDDIRECCION, :IDTIPOPERSONA, :IDTIPODOC, :NDOCUMENTO, :IDNOMEN, :VALORDIREC);`;
      await db.sequelize.query(query, {
          replacements: {            
            POSICION,
            IDDIRECCION,
            IDTIPOPERSONA,
            IDTIPODOC,
            NDOCUMENTO,
            IDNOMEN,
            VALORDIREC
          },
          type: db.sequelize.QueryTypes.INSERT,
        });        
        res.status(200).json({
          "mensaje": "se registró DIRECCION"
      });
  }catch(error){
      console.error('Error al insertar contactos en la base de datos: ' + error);
      res.status(500).json({ error: 'No se pudo registrar contacto.' });
  }  
});


/*-------------------------------------------------------------------------------------------------------*/
 /*------------------------------------Factura busquedas y registros--------------------------------------------------------*/
 app.get('/api/obtenercatproducto', async (req, res) => {
  try {
      const query = 'SELECT idCatProducto, desCatProducto FROM CatProducto;';
      const result = await db.sequelize.query(query, { type: db.sequelize.QueryTypes.SELECT });        
      res.json(result);
  } catch (error) {
      console.error(`Error en la consulta SELECT: ${error}`);
      res.status(500).json({ error: 'Error en la consulta SELECT' });
  }
});


app.post('/api/buscarpersona', async (req, res) => {
  try{   
      const {IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO} = req.body;             
      const query = `SELECT NOMBRE, APELLIDO FROM PERSONA WHERE IDTIPOPERSONA = :IDTIPOPERSONA AND IDTIPODOC = :IDTIPODOC AND NDOCUMENTO = :NDOCUMENTO;`;
      const result = await db.sequelize.query(query, {
          replacements: {
            IDTIPOPERSONA,
            IDTIPODOC,
            NDOCUMENTO                
          },
          type: db.sequelize.QueryTypes.SELECT,
        });      
        
        if(result.length===0){
          res.json({NOMBRE: '', APELLIDO:''})
        }else
          res.json(result);
  }catch(error){
      console.error('Error al BUSCAR persona en la base de datos: ' + error);
      res.data.status(500).json('Wronggg en buscar persona');
  }  
});

app.post('/api/buscarproducto', async (req, res) => {
  try{   
      const {REFPRODUCTO, IDCATPRODUCTO} = req.body;             
      const query = `SELECT P.nomProducto, H.valor FROM Producto P, HistoricoPrecio H
        WHERE P.refProducto = H.refProducto AND P.idCatProducto = H.idCatProducto
        AND H.refProducto = :REFPRODUCTO AND H.idCatProducto = :IDCATPRODUCTO AND H.FechaFin is null;`;
      const result = await db.sequelize.query(query, {
          replacements: {
            REFPRODUCTO,
            IDCATPRODUCTO                            
          },
          type: db.sequelize.QueryTypes.SELECT,
        });      
        
        if(result.length===0){
          res.json({REFPRODUCTO: '', IDCATPRODUCTO:''})
        }else
          res.json(result);
  }catch(error){
      console.error('Error al BUSCAR PRODUCTO en la base de datos: ' + error);
      res.data.status(500).json('Wronggg en buscar PRODUCTO');
  }  
});

app.post('/api/buscarcantidad', async (req, res) => {
  try{   
      const {REFPRODUCTO, IDCATPRODUCTO} = req.body;             
      const query = `SELECT NVL(I.EXISTENCIA,0) CANTIDAD FROM Producto P, INVENTARIO I
                      WHERE P.refProducto = I.refProducto AND P.idCatProducto = I.idCatProducto
                      AND P.refProducto = :REFPRODUCTO AND P.idCatProducto = :IDCATPRODUCTO AND I.consecInven in (select Max(TO_NUMBER(consecInven)) from Inventario where refProducto = :REFPRODUCTO AND idCatProducto = :IDCATPRODUCTO); `;
      const result = await db.sequelize.query(query, {
          replacements: {
            REFPRODUCTO,
            IDCATPRODUCTO                            
          },
          type: db.sequelize.QueryTypes.SELECT,
        });      
        
        if(result.length===0){
          res.json({"CANTIDAD": 0})
        }else
          res.json(result[0]);
  }catch(error){
      console.error('Error al BUSCAR CANTIDAD en la base de datos: ' + error);
      res.data.status(500).json('Wronggg en buscar CANTIDAD');
  }  
});

/*-------------------------------------------------------------------------------------------------------*/
/*-----------------------------------------------Guardar Factura, detalle e inventario-----------------------------------------------*/

app.post('/api/insertarfactura', async (req, res) => {  
  try{   
      const {IDTIPOFAC, IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO, IDTIPOFAC_SUP, NFACTURA_SUP,CODEMPLEADO, TOTALFACTURA} = req.body;  
      console.log(req.body);          
      const query = `INSERT INTO FACTURA VALUES (TO_CHAR(SECUENCIA_FACTURA.nextval), :IDTIPOFAC, :IDTIPOPERSONA, :IDTIPODOC, :NDOCUMENTO, :IDTIPOFAC_SUP, :NFACTURA_SUP, :CODEMPLEADO, CURRENT_TIMESTAMP, :TOTALFACTURA);`;
      await db.sequelize.query(query, {
          replacements: {            
            IDTIPOFAC, 
            IDTIPOPERSONA, 
            IDTIPODOC, 
            NDOCUMENTO, 
            IDTIPOFAC_SUP,
            NFACTURA_SUP,
            CODEMPLEADO,              
            TOTALFACTURA
          },
          type: db.sequelize.QueryTypes.INSERT,
        });        
        res.status(200).json({
          "mensaje": "se registró FACTURA"
      });
  }catch(error){
      console.error('Error al insertar contactos en la base de datos: ' + error);
      res.status(500).json({ error: 'No se pudo registrar contacto.' });
  }  
});

app.post('/api/insertardetallefactura', async (req, res) => {  
  try{   
      const {NFACTURA,IDTIPOFAC, ITEM, IDCATPRODUCTO, REFPRODUCTO, CANTIDAD, PRECIO} = req.body;  
      console.log(req.body);          
      const query = `INSERT INTO DETALLEFACTURA VALUES (:NFACTURA, :IDTIPOFAC, :ITEM, :IDCATPRODUCTO, :REFPRODUCTO, :CANTIDAD, :PRECIO);`;
      await db.sequelize.query(query, {
          replacements: {             
            NFACTURA,        
            IDTIPOFAC, 
            ITEM,
            IDCATPRODUCTO,
            REFPRODUCTO,             
            CANTIDAD, 
            PRECIO
          },
          type: db.sequelize.QueryTypes.INSERT,
        });        
        res.status(200).json({
          "mensaje": "se registró Detalle FACTURA"
      });
  }catch(error){
      console.error('Error al insertar contactos en la base de datos: ' + error);
      res.status(500).json({ error: 'No se pudo registrar contacto.' });
  }  
});

app.post('/api/insertarinventario', async (req, res) => {  
  try{   
      const {IDTIPOFAC, NFACTURA, ITEM,IDCATPRODUCTO, REFPRODUCTO, CONSECINVEN_SUP, SALEN, ENTRAN, EXISTENCIA} = req.body;  
      console.log(req.body);          
      const query = `INSERT INTO INVENTARIO VALUES (SECUENCIA_INVENTARIO.NEXTVAL, :IDTIPOFAC, :NFACTURA, :ITEM, :IDCATPRODUCTO, :REFPRODUCTO, :CONSECINVEN_SUP, CURRENT_TIMESTAMP, :SALEN, :ENTRAN, :EXISTENCIA);`;
      await db.sequelize.query(query, {
          replacements: {            
            IDTIPOFAC, 
            NFACTURA,
            ITEM,
            IDCATPRODUCTO, 
            REFPRODUCTO,
            CONSECINVEN_SUP, 
            SALEN, 
            ENTRAN, 
            EXISTENCIA
          },
          type: db.sequelize.QueryTypes.INSERT,
        });        
        res.status(200).json({
          "mensaje": "se registró inventario"
      });
  }catch(error){
      console.error('Error al insertar contactos en la base de datos: ' + error);
      res.status(500).json({ error: 'No se pudo registrar contacto.' });
  }  
});

app.get('/api/obtenercantidadfacturas', async (req, res) => {
  try {
      const query = 'SELECT max(TO_NUMBER(NFACTURA))+1 CANTFACT FROM FACTURA;';
      const result = await db.sequelize.query(query, { type: db.sequelize.QueryTypes.SELECT });        
      res.json(result[0].CANTFACT);
  } catch (error) {
      console.error(`Error en la consulta SELECT: ${error}`);
      res.status(500).json({ error: 'Error en la consulta SELECT' });
  }
});

app.post('/api/buscarexistenciaproducto', async (req, res) => {
  try{   
      const {IDCATPRODUCTO, REFPRODUCTO} = req.body;             
      const query = `SELECT EXISTENCIA FROM INVENTARIO WHERE IDCATPRODUCTO = :IDCATPRODUCTO AND REFPRODUCTO = :REFPRODUCTO
                  and consecInven in (select Max(TO_NUMBER(consecInven)) from Inventario where refProducto = :REFPRODUCTO AND idCatProducto = :IDCATPRODUCTO);`;
      const result = await db.sequelize.query(query, {
          replacements: {
            IDCATPRODUCTO,
            REFPRODUCTO                            
          },
          type: db.sequelize.QueryTypes.SELECT,
        });              
      
        if(result.length===0){
          res.json({"EXISTENCIA": 0})
        }else
          res.json(result[0]);
  }catch(error){
      console.error('Error al BUSCAR persona en la base de datos: ' + error);
      res.data.status(500).json('Wronggg en buscar persona');
  }  
});

app.post('/api/verificarFactura', async (req, res) => {
  try {
    const {NFACTURA, IDTIPOFAC, IDTIPODOC, NDOCUMENTO } = req.body;     
    const query = `SELECT COUNT(NFACTURA) COUNT FROM FACTURA WHERE NFACTURA = :NFACTURA AND IDTIPOFAC = :IDTIPOFAC AND IDTIPODOC = :IDTIPODOC AND NDOCUMENTO = :NDOCUMENTO;`;
    const result = await db.sequelize.query(query, {
      replacements: {
        NFACTURA,
        IDTIPOFAC,
        IDTIPODOC,
        NDOCUMENTO
      },
      type: db.sequelize.QueryTypes.SELECT,
    });

    // Si count es mayor que 0, significa que ya existe una combinación en la base de datos      
    const exists = result[0].COUNT > 0;  
    res.json({ exists });
  } catch (error) {
    console.error('Error al verificar el registro:', error);
    res.status(500).json({ error: 'Error en el servidor' });
  }
});



/*-------------------------------------------------------------------------------------------------------*/

/*db.sequelize
.sync({force:true})
.then(()=>console.log('conectado a base de datos'))
.catch((e)=>console.log(`Error => ${e}`));*/

