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
      const query = 'SELECT DISTINCT idDireccion NUMDIRECC FROM DIRECCION;';
      const result = await db.sequelize.query(query, { type: db.sequelize.QueryTypes.SELECT });        
      res.json(result[0].NUMDIRECC);
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

/*-------------------------------------------------------------------------------------------------------*/

/*db.sequelize
.sync({force:true})
.then(()=>console.log('conectado a base de datos'))
.catch((e)=>console.log(`Error => ${e}`));*/

